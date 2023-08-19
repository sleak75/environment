" read syntax files in nocompatible ode:
:set nocompatible

" RDF Notation 3 Syntax
au BufNewFile,BufRead *.n3  setfiletype n3
au BufNewFile,BufRead *.{ttl,nt,nq}  setfiletype turtle

" markdown
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} setfiletype markdown
