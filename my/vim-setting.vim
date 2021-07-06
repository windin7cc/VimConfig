"--set:--
let $LANG='en'
set langmenu='en'

"encoding:
set encoding=utf-8
set fileencoding=utf-8

"sequence to anticipate the encoding.
"set fileencodings=cp936,ucs-bom,utf-8

"double chars to display a char unit.
"se ambiwidth=double

set nocompatible "to vi.
behave xterm

filetype plugin indent on
syntax enable

"window position
"winpos 300 150

color purple
"phd "molokai

"set noicon
"does not work for Windows.
"set iconstring=d:\software\vim\vimfiles\o.ico "substitute the vim icon

"menu & button options
"eic: to hide them.
set guioptions=eic "default:egmrLtT

"font:
"set guifont=黑体:h14:cGB2312:qCLEARTYPE
"set guifont=DejaVu_Sans_Mono:h12:w7:cDEFAULT:qCLEARTYPE
"set guifont=DejaVu_Sans_Mono:h14:w8
se guifont=cascadia_code:h14

set lines=20 columns=64

set viminfo='10,\"100,:20,%,n~/.viminfo
set wildmenu "enhance command line completion(show an item list).
"char to invoke wildmode and select.
set wildchar=<Tab>
"form of 4 parts, each one explains what to do for [n] times when <wildchar> called.
"set wildmode=longest,list,full
set wildmode=full
set gcr=a:blinkon0 "static cursor
"set foldmethod=indent
"set foldmethod=syntax
"set nofoldenable "no folder" when launching

"set path+=D:\Software\mingw64\include
"set tags=tags "ctags's path

"backup:
set nobackup
set noundofile
set noswapfile
set writebackup
"set backup file's extension
"set backupext=.bak

"read the file automatically when it is changed outside.
set autoread
set number
"maximun width of text, long line broke after white space.
"0 disable this.
set textwidth=0
set autoindent "copy the indentation with the current line to a new line.
"set smartindent "indenting when starting a new line for c-like file
"copy the prev indentation on autoindenting.
"set copyindent
"smart indent for c-like code.
"set cindent

"mouse behavior:
"not enabled: the GUI will still use the mouse for modeless selection.
"a: all mode
"set mouse=

set incsearch "show where the pattern as it typed matches
set hlsearch "heighlight search answers

set undolevels=50
set report=0 "always repot with command msg
set synmaxcol=500 "let high-lighted columns<=100
"set showmatch "show match of (..)
set matchtime=2
"set cursorline "hl the cursor at the line
"set cursorcolumn "hl the column
"set novisualbell

set tabstop=4 "default=8
"Number of spaces that a <Tab> counts for while performing editingset.
set shiftwidth=4 "num of spaces to use for (auto)indent, default=8 set expandtab
set noexpandtab

"b:<BS> s:<Space>"
set nowrap
"set whichwrap=b,s,h,l "allow backspace,space,h,l to jump line
set backspace=indent,eol,start  " Make backspace work as you would expect.
"Switch between buffers without having to save first.

set hidden
set laststatus=2 " Always show statusline.
"set dispcay =lastline " Show as much as possible of the last line.
set showmode "show current mode in command line.
set showcmd "show typed content(incomplete commands) when more are expected.
"set cmdheight=1 "cmd mode height
"normal text. Each status line item is of the form:
"%-0{minwid}.{maxwid}{item}
"set statusline=%F%m%r%h%w\ [OS=%{&ff}]\ [FT=%y]\ [%l,%v]
"influences when the last window will have a
"status line: 0: never 1: when windows>=2 2: always
set laststatus=2
"share the clipboard of system with register: +,*.
"in win they are the same as a public clip buffer, but in linux, * -> selected by mouse
set clipboard^=unnamed,unnamedplus
"set magic "used for pattern, default is magic
"the row off cursor row.
set scrolloff=0
set ignorecase
"override when type in upper case chars.
set smartcase
"not break next word
"set linebreak

"set the bg style make chars easy to see.
set background=dark
"disp cursor position.
set ruler
"Set vimfiles location.

"to show non-printable chars.
"set nolist

"set chars as substitutions for non-printable chars.
"set listchars=eol:$,trail:-,tab:>-,extends:>,precedes:<,conceal:+
set listchars=space:•,tab:➤-,trail:-,eol:\| "extends:>,precedes:<,conceal:+

"chars used for the status line, folds and filler lines
"set fillchars=stl:^,stlnc:-,vert:\│,fold:-,diff:-

"set showbreak=↪

"do not check inner options when open a new file.
set nomodeline
"insert mode completion style, show popup items list.
set completeopt=menu,longest
"controls buf switching.
"useopen: jump to opened win tha contains the buf when switching.
"usetab:like useopen, also consider win in other tabs.
set switchbuf=useopen,usetab

"set cdpath=D:\\Dev,D:\\Text

"@ stands for all english chars.
"48-57 is num's ascii codes
"indicate what is recognized as a word.
"(vi default:)
set iskeyword=@,48-57,_

"--window
"suitable minimal lines for the current window,
"use fewer lines if there isn't enough room.
"au VimEnter * set winheight=5
"strict minimun height for other windows, they can't be smaller.
"set winminheight=1

"auto change dir to current file or buf.
"set autochdir

"set some modes which can be set by behave too.
"when to start select mode instead of visual mode.
"set selectmode=""
"set mousemodel="extend"
"set keymodel=""
"old|[in|ex]clusive
"set sel="inclusive"

"set display on/off of vim procedure's title.
set title titlestring=Notepad "%<%F%=%l/%L-%P titlelen=70
"set winaltkeys=no "turn off <Alt> to GUI menu.
"--set$--
