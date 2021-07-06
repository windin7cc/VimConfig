"--func:--
func! Compile()
	exec "update"
	if &filetype=='c'
		exec '!gcc -std=c99 -Wall % -o %<.exe'
	elseif &filetype=='cpp'
		"exec '!g++ -std=c++11 -Wall -g % -o %<.exe'
		exec '!g++ -Wall % -o %<.exe'
	endif
endf

func! DebugCompile()
	exec "update"
	if &filetype == 'c'
		exec "!gcc -ggdb3 -Wall -g % -o %<.exe"
	elseif &filetype == 'cpp'
		"exec "!g++ -std=c++11 -Wall -g % -o %<.exe"
		exec "!g++ -g % -o %<.exe"
	endif
endfunc
"--func$--
