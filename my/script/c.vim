ec "c.vim start loading."

if &cp || exists("g:c")
"g:c==1
	ec "c.vim was loaded."
	finish
else
	let g:c=1
	if exists("g:c_cpp")
		source "c_c++.vim"
		let g:c_cpp=1
	endif
	"ec "c.vim continue loading..."
endif

"--imap c:--
inoremap #df #define
inoremap #sf scanf("%",);<Esc>3hi
inoremap #gc getchar();<Esc>hi
inoremap #pf printf("\n");<Esc>4hi
inoremap #ps puts();<Esc>hi
inoremap #pc putchar();<Esc>hi
inoremap #pn putchar('\n');
"--imap c$--

func! C_EmptyTemplate()
	let t="#include <stdio.h>\n"
	\ ."\n"
	\ ."int main(){\n"
	\ ."    return 0;\n"
	\ ."}"
	silent put!=t
endfunc
