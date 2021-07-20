if has("win32")
	"date-time: 2021-6-03 15:51:20
	iab xdt <C-r>=strftime("%Y-%#m-%d %H:%M:%S")<CR>

	"date: 2021-6-3
	iab xd <C-r>=strftime("%Y-%#m-%#d")<CR>

	"# in %#m means: not pad 0 as prefix (when digits<2)
else
	"in linux
	"%-m <-> %#m
	iab xdt <C-r>=strftime("%Y-%-m-%d %H:%M:%S")<CR>
	iab xd <C-r>=strftime("%Y-%-m-%#d")<CR>
endif

"time: 10:48:27
iab xt <C-r>=strftime("%X")<CR>

iab xts <C-r>=strftime("%Y%m%d_%H%M%S")<CR>
