" -- don't try to be vi:
set nocompatible
set nocp

" -- searching --
set ignorecase
set smartcase
set hlsearch
set scrolloff=20
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" -- 4 spaces, not tabs --
set expandtab
set tabstop=4
set shiftwidth=4

" one-finger register access
nnoremap ; "
vnoremap ; "

" and one-finger macro replay
nnoremap , @
vnoremap , @

" -- don't autowrap, but nudge me ..
set colorcolumn=90

" -- folding --
set foldmethod=indent
highlight Folded ctermbg=Lightgrey cterm=bold
nnoremap <S-Left> zc
inoremap <S-Left> zc
nnoremap <S-Right> zo
inoremap <S-Right> zo
nnoremap <S-C-Left> zM
inoremap <S-C-Left> zM
nnoremap <S-C-Right> zR
inoremap <S-C-Right> zR
" Shift-Up Shift-Down (incase Shift is held while browsing folds)
nmap <S-Up> <Up>
imap <S-Up> <Up>
nmap <S-Down> <Down>
imap <S-Down> <Down>
" start unfolded:
au BufRead * normal zR

" indent guides:
" (git://github.com/nathanaelkane/vim-indent-guides.git)
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_color_change_percent = 50

" -- syntax highlighting --
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\s\+$/
"filetype off
filetype plugin indent on
syntax on

" -- opening files in new tab (:Te)
" <Leader> is \  
map <Leader>z <esc>:tabprevious<CR>
map <Leader>x <esc>:tabnext<CR>

" -- autoload plugins --
call pathogen#infect()

" -- indentation --
vnoremap < <gv
" don't autofold a block i just indented:
vnoremap > >gv zo

set noautoindent
" really, I mean it!
filetype indent off

" i don't like autocomment either:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" avoid $SCRATCH:
set directory^=$HOME/.vim/swap//
" set uc=100

" from http://vim.wikia.com/wiki/Different_syntax_highlighting_within_regions_of_a_file
" (there's probably a more general way to do this, eg add it to the rst syntax file
" and make it use the argument of .. code-block to select the syntax..)
function! TextEnableCodeSnip(filetype,start,end,textSnipHl) abort
  let ft=toupper(a:filetype)
  let group='textGroup'.ft
  if exists('b:current_syntax')
    let s:current_syntax=b:current_syntax
    " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
    " do nothing if b:current_syntax is defined.
    unlet b:current_syntax
  endif
  execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
  try
    execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
  catch
  endtry
  if exists('s:current_syntax')
    let b:current_syntax=s:current_syntax
  else
    unlet b:current_syntax
  endif
  execute 'syntax region textSnip'.ft.'
  \ matchgroup='.a:textSnipHl.'
  \ start="'.a:start.'" end="'.a:end.'"
  \ contains=@'.group
endfunction
autocmd BufNewFile,BufRead *.rst call TextEnableCodeSnip(  'turtle',   '.. code-block:: turtle',   '.. end', 'rstDirective')
autocmd BufNewFile,BufRead *.rst call TextEnableCodeSnip(  'python',   '.. code-block:: python',   '.. end', 'rstDirective')
autocmd BufNewFile,BufRead *.rst call TextEnableCodeSnip(  'plantuml', '.. code-block:: plantuml', '.. end', 'rstDirective')
autocmd BufNewFile,BufRead *.rst call TextEnableCodeSnip(  'json', '.. code-block:: json', '.. end', 'rstDirective')

" perlmutter default backspacing setting is quirky, so be explicit:
set backspace=indent,eol,start

