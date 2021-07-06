"set runtimepath+=~/.vim

"set pythonthreedll=D:\\Software\\Python\\Python3.7\\python37.dll 

"plug '[author]/[plugin]' default map to url: 'github.com/[author]/[plugin repo]' 
"if installed, find plugins in runtime locations, and plug them.
"silent! call plug#begin('~/.vim/plugged')
"silent!
"call plug#begin('$VIM/vimfiles/plugged')

"code:
"complete:
	"Plug 'neoclide/coc.nvim', "{'branch':'release'}
	"Plug 'ycm-core/YouCompleteMe' ",{'for':['c','c++']}
	"Plug 'junegunn/vim-easy-align'

"tag:
	"Plug 'ludovicchabant/vim-gutentags'
	"Plug 'vim-scripts/taglist.vim', {'for':['c','c++']}

"other:
	"Plug 'jiangmiao/auto-pairs'
	"Plug 'junegunn/vim-easy-align'
	"Plug 'scrooloose/nerdcommenter'
	"Plug 'mattn/emmet-vim', {'for':'html'}
	"Plug 'octol/vim-cpp-enhanced-highlight'
	"Plug 'luochen1990/rainbow'
"code$

"snippet:
	"Plug 'SirVer/ultisnips'
	"Plug 'honza/vim-snippets'

"search:
	"Plug 'Yggdroot/LeaderF'

"explore:
	"Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
	"Plug 'kshenoy/vim-signature'

"appearance:
	"Plug 'schmich/vim-guifont'
	"Plug 'vim-airline/vim-airline-themes'
	"Plug 'vim-airline/vim-airline'
	"Plug 'crusoexia/vim-monokai'

"markdown:
	"Plug 'iamcco/mathjax-support-for-mkdp' ",{'for':'md'}
	"Plug 'iamcco/markdown-preview.vim' ",{'for':'md'}

"other:
	"Plug 'vim-scripts/DrawIt'

"the plug itself: vim-plug, located in autoload
"just put it's net address here to update
"Plug 'junegunn/vim-plug'

"silent!
"call plug#end()

"--plugin config:(temp)--
"noremap 

"open NERDTree when open vim
"autocmd vimenter * NERDTree

"quit NERDTree when quit vim
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"--plugin config$--

"--source file:--
"so(urce)
so $VIM\my\vim-setting.vim
so $VIM\my\script\def.vim
so $VIM\my\script\time.vim
so $VIM\my\script\common.vim
so $VIM\my\script\compile.vim
so $VIM\my\script\debug.vim
"so $VIM\my\plugin\load_plugin_config.vim
"--source file$--

"--map:--
"go to end to append
map <F2> GA

map <F5> :call Compile()<CR>
map <F6> :call Run()<CR>
map <C-F5> :call DebugCompile()<CR>
map <C-F6> :call DebugRun()<CR>

map <F10> :tabnew<CR>

"switch window
map <C-Tab> <C-w>w
map <C-S-Tab> <C-w>W

"--nmap:--
nnoremap gva ggVG

"switch tab
nnoremap <C-;><C-n> :tabnext<CR>
nnoremap <C-;><C-p> :tabprevious<CR>

"switch buffer
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

"map <silent>;sy :call ToggleSyntax()<CR>

noremap <Leader>ls :ls<CR>

"switch to the next buf, then delete the previous one.
nnoremap <Leader>bc :bn<CR>:bd#<CR>

"into v mode, select an inner word.
noremap <space> viw

"remove a line and paste below the next line. (move down a line).
noremap - ddp

"~ above the prev line. (move up a line).
noremap _ ddkP

"search & replace with g
noremap \srg :%s///g<Left><Left><Left>

"if now at col[1] then 0 means use ^ else use 0.
noremap <expr>0 col('.')==1?'^':'0'

"--nmap:--
nmap <Leader>vrc :e $MYVIMRC<CR>

nmap <Leader>pw :pw<CR>

nmap <Leader>bw :bw<CR>

"path:
":cd<space> to trigger
nmap <Leader>cd :cd
nmap <Leader>cd. :cd %:h<CR>
nmap <Leader>cdc :cd /Dev/C<CR>

nmap <Tab> V>
nmap <S-Tab> V<

"close the current window area.
nnoremap zq :clo<CR>

nnoremap cO O<Esc>j

nnoremap co o<Esc>k

nnoremap <Leader>h :help 

"paste content in register +.
"nnoremap <Leader>p "+p

"nnoremap <Leader>f $s{<Esc>jcoki<Esc>
"
"nnoremap <Leader>f $s{<CR>}<ESC>O

"nmap <Leader>ct ctags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR> "for c++

"nmap <silent><leader>e :explore<cr> 
"--nleader$---

"nnoremap zm I<!--<Esc>A--><Esc>
"nnoremap zn ^4x$xxx

nnoremap <buffer> <CR> 0ye<C-W>w:tag <C-R>"<CR>
"--nmap$--

"--imap:--
"map <C-n>:complete options match -> <C-x><C-n>:local match
inoremap <C-n> <C-x><C-n>
"<C-x><C-n>:from current file -> <C-n>
inoremap <C-x><C-n> <C-n>
"a whole line 
"inoremap <C-x><C-l> <C-l>
"from dictionary
"inoremap <C-x><C-k> <C-k>
"from tag
"inoremap <C-x><C-]> <C-]>
"from file path
"inoremap <C-x><C-f> <C-f>
"complete$

"imap <C-Tab> <Esc><C-w>w
"imap <C-S-Tab> <Esc><C-w>W
inoremap <silent><Leader>calc <C-R>=string(eval(input("calc: ")))<CR>
"delete the current line (move to the next)
inoremap <C-d> <Esc>ddi
"--imap$--

""--vmap:--
"shift code with a tab-width, remain in v mode after the operation.
vnoremap <tab> >gv
vnoremap <S-Tab> <gv
vnoremap > >gv
vnoremap < <gv
""copy to win clipboard
"vnoremap <Leader>y "+y
"vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>
"--vmap$--

"--cmap:-- command mode map
"map keys to select history commands in cmd-line.
cnoremap <C-j> <down>
cnoremap <C-k> <up>
"--cmap$--

"--map$--

"--abbr:--
"--iabbr:--
"insert current working dir.
iab <silent>cwd <C-R>=getcwd()<CR>
"--iabbr$--
"--abbr$--

"--autocmd:--
"jump to mark " when read buffer.
"same as above(expanded multi line).
autocmd BufReadPost *
	\if line("'\"")>0 && line("'\"") <= line("$") |
	\exe "normal g'\""|
	\endif

augroup vimrc
	"clear all vimrc group's autocmd.
	autocmd!
	"autocmd BufNewFile,BufRead *.c echo "got c buf!"
	"autocmd BufNewFile,BufRead *.cpp source $VIM\my\script\c++.vim
	"autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup augroup_c
	autocmd FileType c source $VIM\my\script\c.vim
	"autocmd FileType c,cpp source $VIM\my\script\c_c++.vim
	"autocmd FileType c,cpp set fileencoding=cp936 fileformat=dos

	autocmd BufNewFile *.c call C_EmptyTemplate()
	"autocmd BufNewFile *.cpp call Cpp_EmptyTemplate()

	"When starting to edit a new buffer, after
	"reading the file into the buffer, before
	"executing the modelines.
	"autocmd BufReadPost *.c :echo "hi c file! (BufRead)"
augroup END

"to terminate the procession of vimscript.
finish

"autocmd vimrc FileType txt source ~/abbr.vim
"to generate skeletions when created a new buf.
"autocmd vimrc BufNewFile *.c[ch] 0read ~/skeletions/skel.c 

"au VimLeave * echo "good bye!"
"echo 'hello ' . $USERNAME '! time: ' . strftime("%Y-%m-%d %T")
"--autocmd$--
