" File Catagory: colorscheme
" Author: me
" Modified From: http://bytefluent.com/vivify

hi clear

if exists("syntax_on")
	syntax reset
endif

"set background=dark
"let g:colors_name = "purple"

"let s:purple1='#140514'
"let s:orange1='#ffa600'
"let s:orange2='#ff6600'

"source code syntax:
hi Normal guifg=#eeeeee guibg=#140514
hi Title guifg=#ff85ff gui=bold
"#include statement.
hi Include guifg=#ff0000
hi Define guifg=#4cabab
hi Operatowr guifg=#b9a7ff gui=bold
hi Function guifg=#3a5bbd
hi Comment guifg=#888855 "888855,9c6078

"keywords: (such as) #define or macro #define L.
hi PreProc guifg=#d94fd9 
hi Keyword guifg=#ffa600 gui=bold
hi Type guifg=#e62565 gui=bold
hi Constant guifg=#ff6600
hi String guifg=#71e388
hi Tag guifg=#ff92bc 

"debug:
hi ErrorMsg guifg=#ff0000 guibg=#140514
hi Exception guifg=#ff8cff gui=bold
hi WarningMsg guifg=#ff917d
hi Question guifg=#eaf03b gui=bold
hi Debug guifg=#ff92bc

"other:
hi Search guifg=#000000 guibg=#ffff00
"chars' color in IncSearch is treat as guibg.
hi IncSearch guifg=#0099ff guibg=#ffff00
"mode text, like: -- INSERT --
hi ModeMsg guifg=#00d0d0
"in visual mode, select area.
hi Visual guifg=#ff85ff guibg=#404040
"WildMenu options completion.

"user interface:
"for WildMenu completion.
hi WildMenu guifg=#ffff00 guibg=#140514 "gui=underline
hi VertSplit guifg=#140514 guibg=#a000a0
hi LineNr guifg=#502050
hi Statement guifg=#ffa600 gui=bold 
hi Directory guifg=#00ff8c

"status line of current window.
hi StatusLine guifg=#ee0000 guibg=#140514 gui=bold 
"status lines of NC(not-current) windows.
hi StatusLineNC guifg=#bb3333 guibg=#140514 gui=bold

"Meta and functional keys listed with ":map", also for unprintable chars.
"(listchars).
hi SpecialKey guifg=#437fff
"the character under the cursor.
"hi Cursor guifg=#150514 guibg=#eeeeee
hi Cursor guifg=#000000 guibg=#aa00ff
"hi the line which cursor laid when set 'cursorline' is on.
"hi CursorLine guifg= guibg=
"underneath the last line (~), bg include the whole lines' area.
hi EndOfBuffer guifg=#aaaa00
hi NonText guifg=#bb3333

"colors for pop up menu for completion.
hi Pmenu guifg=#eeeeee guibg=#333333
hi PmenuSel guifg=#00aaee guibg=#111111
hi PmenuSbar guibg=#000000
