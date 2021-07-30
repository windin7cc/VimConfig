"--source file:--
"so(urce)
"let g:my_script='$VIM/my/script'
"let vimset=g:my_script . '/' . 'vim-setting.vim'

so $VIM/my/script/vim-setting.vim
so $VIM/my/script/def.vim
so $VIM/my/script/time.vim
so $VIM/my/script/common.vim
so $VIM/my/script/compile.vim
so $VIM/my/script/debug.vim
so $Vim/my/plugin/load.vim
"--source file$--

color dracula
"purple phd molokai

set complete=.,b

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
nnoremap vaa ggVG
nnoremap daa ggVGd

"switch tab

"n(ext)
"nnoremap <C-;><C-n> :tabn<CR>
"p(revious)
"nnoremap <C-;><C-p> :tabp<CR>

"switch buffer
"nnoremap <C-n> :bn<CR>
"nnoremap <C-p> :bp<CR>

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

"path:
nmap <Leader>h :help 
nmap <Leader>pw :pw<CR>
nmap <Leader>bw :bw<CR>

"switch to the next buf, then delete the previous one.
nmap <Leader>bc :bn<CR>:bd#<CR>

nmap <Leader>ls :ls<CR>

"edit files:
nmap <Leader>vrc :e $MYVIMRC<CR>
nmap <Leader>vpl :e $Vim/my/plugin/load.vim<CR>

"enter path:
":cd<space> to trigger
nmap <Leader>cd :cd
nmap <Leader>cd. :cd %:h<CR>
nmap <Leader>cdc :cd /Dev/C<CR>

nmap <Tab> V>
nmap <S-Tab> V<

"close the current window area.
nnoremap zq :clo<CR>

nnoremap co o<Esc>k
nnoremap cO O<Esc>j

"paste content in register +.
"nnoremap <Leader>p "+p

"nnoremap <Leader>f $s{<Esc>jcoki<Esc>
"
"nnoremap <Leader>f $s{<CR>}<ESC>O

"nmap <Leader>ct ctags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR> "for c++

"nmap <silent><leader>e :explore<cr> 

"paste content in register +.
"nnoremap <Leader>p "+p
"nnoremap <Leader>f $s{<Esc>jcoki<Esc>
"nnoremap <Leader>f $s{<CR>}<ESC>O

"nmap <Leader>ct ctags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR> "for c++

"nnoremap zm I<!--<Esc>A--><Esc>
"nnoremap zn ^4x$xxx

nnoremap <buffer> <CR> 0ye<C-W>w:tag <C-R>"<CR>
"--nmap$--

"--imap:--
"map <C-n>,<C-p>:common complete -> <C-x><C-n>:local match
inoremap <C-n> <C-x><C-n>
inoremap <C-p> <C-x><C-p>

"map <C-x><C-n>,<C-x><C-p>:complete from current buffer -> <C-n>: common
inoremap <C-x><C-n> <C-n>
inoremap <C-x><C-p> <C-p>

"a whole line 
"inoremap <C-x><C-l> <C-l>
"from dictionary
"inoremap <C-x><C-k> <C-k>
"from tag
"inoremap <C-x><C-]> <C-]>
"from file path
"inoremap <C-x><C-f> <C-f>

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
cnoremap <C-l> <right>
cnoremap <C-h> <left>

"cmap <Leader>plugl $Vim/my/script/vim-setting.vim
"cmap <Leader>plugl $Vim/my/plugin/load_plugins.vim
"cmap <Leader>plugc $Vim/my/plugin/load_plugins_config.vim

"--cmap$--
"--map$--

"--abbr:--
"--iabbr:--
"insert current working dir.
"iab <silent>cwd <C-R>=getcwd()<CR>
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
