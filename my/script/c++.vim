"ec "c++.vim start loading!"

if &cp || exists("cpp")
	ec "c++.vim was loaded."
	finish
else
	let g:cpp=1
	source c_c++.vim
	let g:c_cpp=1
	ec "c_c++.vim loaded..."
	ec "c++.vim loading..."
endif

"--map:--
inoremap #na using namespace std;<Esc>vb
inoremap #co cout<<<<endl;<Esc>6hi
inoremap #cls class {<CR>};<ESC>kwa
inoremap #try try{<CR><CR>}catch(){<CR>}<ESC>2ki<Tab>
"--map$--

"--func:--
func! Cpp_EmptyTemplate()
	let tpl="#include <iostream>\n"
	\."using namespace std;\n"
	\."\n"
	\."int main(){\n"
	\."    return 0;\n"
	\."}"
	silent put!=tpl
endfunction
"--func$--
