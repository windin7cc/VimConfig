ec "c_c++.vim start loading."

if exists("g:c_cpp")
	echo "c_cpp.vim loaded."
	finish
else
	echo "c_c++.vim loaded..."
endif

"--imap c_c++ begin--
inoremap #in #include <><Esc>i
inoremap #main int main(){<CR><CR>return 0;<CR>}<ESC>2ki<Tab>
"inoremap #cm /*<CR><Tab>Describe:<CR>Input:<CR>Output:<CR><BS>*/<ESC>3kA
"inoremap #cm /**/<ESC>hi
inoremap #if if(){<CR>}<ESC>k2la
inoremap #el else{<CR>}<ESC>O
inoremap #ie if(){<CR>}else{<CR>}<ESC>2k3li
inoremap #ef else if(){<CR>}<ESC>k8la
inoremap #whi while(){<CR>}<ESC>k5la
inoremap #for for(int i=0;i<;i++){<CR>}<ESC>k13la
"inoremap #swi switch(){<CR>case 0:break;<CR>case 1:break;<CR>case 2:break;<CR>default:break;<CR>}<ESC>5kela
inoremap #swi switch(){<CR>case 0:break;<Esc>yy2pjA<CR>default:break;<CR>}<ESC>5kela

"func short spell.
inoremap #fi int (){<CR>return 0;<CR>}<CR><Esc>3k4li
inoremap #fd double (){<CR>return 0;<CR>}<CR><Esc>3k7li
inoremap #fv void (){<CR>}<CR><Esc>2k5li
"--imap c_c++ end--
