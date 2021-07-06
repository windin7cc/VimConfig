"echomsg "common.vim start loading!"

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

if has("clipboard")
	"cut
	vnoremap <S-Del> "+x

	"copy
	vnoremap <C-c> "+y
	vnoremap <C-Insert> "+y

	"paste
	map <C-v> "+gp
	map <S-Insert> "+gp

	"paste (on command line)
    cmap <C-V>		<C-R>+
	cmap <S-Insert> <C-R>+
endif

" (i mode paste)
" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.
" They are pasted as if they " were characterwise instead.
" Uses the paste.vim autoload script.
" Use CTRL-G u to have CTRL-Z only undo the paste.
if 1
    exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
    exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']
endif

"simulate <C-v>
imap <S-Insert>	<C-v>
vmap <S-Insert>	<C-v>

"update file.
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>

"undo in i mode.
inoremap <C-z> <C-o>u
"<C-r> is default redo.

"navigate to next window.
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

"some old maps:
"inoremap [ []<Esc>i
"inoremap { {<CR>}<Esc>O
"
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap } <c-r>=CloseBracket()<CR>
"inoremap \" <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>
