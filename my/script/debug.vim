func! Run()
	if &filetype == 'c' || &filetype == 'cpp'
		exec "!%<.exe"
	"elseif &filetype == 'autohotkey'
	"	exec "!%"
	elseif &filetype == 'python'
		exec "!py %"
	endif
endfunc

func! DebugRun()
	exec "!gdb %<.exe"
endfunc
