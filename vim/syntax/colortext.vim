" Vim syntax file
" Language:	ColorText
" Maintainer:	Steve Leak <sleak@lbl.gov>
" Remark:	interpret terminal color codes and color accordingly (for eg colored output)

if exists("b:current_syntax")
  finish
endif

syn region ansiNone       start="\e\[[01;]m"           skip='\e\[K' end="\ze\e\[" 
syn region ansiNone       start="\e\[m"                skip='\e\[K' end="\ze\e\[" 
syn region ansiNone       start="\e\[\%(0;\)\=39;49m"  skip='\e\[K' end="\ze\e\[" 
syn region ansiNone       start="\e\[\%(0;\)\=49;39m"  skip='\e\[K' end="\ze\e\[" 
syn region ansiNone       start="\e\[\%(0;\)\=39m"     skip='\e\[K' end="\ze\e\[" 
syn region ansiNone       start="\e\[\%(0;\)\=49m"     skip='\e\[K' end="\ze\e\[" 
syn region ansiNone       start="\e\[\%(0;\)\=22m"     skip='\e\[K' end="\ze\e\[" 

syn region ansiBold       start="\e\[;\=0\{0,2};\=1m"  skip='\e\[K' end="\ze\e\[" 
syn region ansiItalic     start="\e\[;\=0\{0,2};\=3m"  skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderline  start="\e\[;\=0\{0,2};\=4m"  skip='\e\[K' end="\ze\e\[" 

syn region ansiBlack      start="\e\[;\=0\{0,2};\=30m" skip='\e\[K' end="\ze\e\[" 
syn region ansiRed        start="\e\[;\=0\{0,2};\=31m" skip='\e\[K' end="\ze\e\[" 
syn region ansiGreen      start="\e\[;\=0\{0,2};\=32m" skip='\e\[K' end="\ze\e\[" 
syn region ansiYellow     start="\e\[;\=0\{0,2};\=33m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBlue       start="\e\[;\=0\{0,2};\=34m" skip='\e\[K' end="\ze\e\[" 
syn region ansiMagenta    start="\e\[;\=0\{0,2};\=35m" skip='\e\[K' end="\ze\e\[" 
syn region ansiCyan       start="\e\[;\=0\{0,2};\=36m" skip='\e\[K' end="\ze\e\[" 
syn region ansiWhite      start="\e\[;\=0\{0,2};\=37m" skip='\e\[K' end="\ze\e\[" 
syn region ansiGray       start="\e\[;\=0\{0,2};\=90m" skip='\e\[K' end="\ze\e\[" 

syn region ansiRed        start="\e\[;\=0\{0,2};\=91m" skip='\e\[K' end="\ze\e\[" 
syn region ansiGreen      start="\e\[;\=0\{0,2};\=92m" skip='\e\[K' end="\ze\e\[" 
syn region ansiYellow     start="\e\[;\=0\{0,2};\=93m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBlue       start="\e\[;\=0\{0,2};\=94m" skip='\e\[K' end="\ze\e\[" 
syn region ansiMagenta    start="\e\[;\=0\{0,2};\=95m" skip='\e\[K' end="\ze\e\[" 
syn region ansiCyan       start="\e\[;\=0\{0,2};\=96m" skip='\e\[K' end="\ze\e\[" 
syn region ansiWhite      start="\e\[;\=0\{0,2};\=97m" skip='\e\[K' end="\ze\e\[" 

syn region ansiBoldBlack  start="\e\[;\=0\{0,2};\=\%(1;30\|30;0*1\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBoldRed    start="\e\[;\=0\{0,2};\=\%(1;31\|31;0*1\)m" skip="\e\[K" end="\ze\e\[" 
syn region ansiBoldGreen  start="\e\[;\=0\{0,2};\=\%(1;32\|32;0*1\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBoldYellow start="\e\[;\=0\{0,2};\=\%(1;33\|33;0*1\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBoldBlue   start="\e\[;\=0\{0,2};\=\%(1;34\|34;0*1\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBoldMagenta    start="\e\[;\=0\{0,2};\=\%(1;35\|35;0*1\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBoldCyan   start="\e\[;\=0\{0,2};\=\%(1;36\|36;0*1\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBoldWhite  start="\e\[;\=0\{0,2};\=\%(1;37\|37;0*1\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiBoldGray   start="\e\[;\=0\{0,2};\=\%(1;90\|90;0*1\)m" skip='\e\[K' end="\ze\e\[" 

syn region ansiStandoutBlack  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;30\|30;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutRed    start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;31\|31;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutGreen  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;32\|32;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutYellow start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;33\|33;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutBlue   start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;34\|34;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutMagenta    start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;35\|35;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutCyan   start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;36\|36;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutWhite  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;37\|37;0*3\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiStandoutGray   start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(3;90\|90;0*3\)m" skip='\e\[K' end="\ze\e\[" 

syn region ansiItalicBlack    start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;30\|30;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicRed  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;31\|31;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicGreen    start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;32\|32;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicYellow   start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;33\|33;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicBlue start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;34\|34;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicMagenta  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;35\|35;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicCyan start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;36\|36;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicWhite    start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;37\|37;0*2\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiItalicGray start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(2;90\|90;0*2\)m" skip='\e\[K' end="\ze\e\[" 

syn region ansiUnderlineBlack start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;30\|30;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineRed   start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;31\|31;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineGreen start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;32\|32;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineYellow    start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;33\|33;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineBlue  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;34\|34;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineMagenta   start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;35\|35;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineCyan  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;36\|36;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineWhite start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;37\|37;0*4\)m" skip='\e\[K' end="\ze\e\[" 
syn region ansiUnderlineGray  start="\e\[;\=0\{0,2};\=\%(1;\)\=\%(4;90\|90;0*4\)m" skip='\e\[K' end="\ze\e\[" 
