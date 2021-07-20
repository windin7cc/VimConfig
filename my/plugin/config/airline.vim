"if(!exists('airline_using'))
"	finish
"endif

"so $VIM\my\appearance\airline-theme\cool.vim

let g:airline_theme='ayu_mirage'
"cool, dark, fairyfloss, fruit_punch, ayu_mirage
finish

"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

" 设置状态栏
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#buffer_nr_show = 0
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline#extensions#tabline#buffer_idx_format = {
"       \ '0': '0 ',
"       \ '1': '1 ',
"       \ '2': '2 ',
"       \ '3': '3 ',
"       \ '4': '4 ',
"       \ '5': '5 ',
"       \ '6': '6 ',
"       \ '7': '7 ',
"       \ '8': '8 ',
"       \ '9': '9 '
"       \}

"let g:airline_symbols.linenr = "L" " current line
"let g:airline_symbols.whitespace = '|'
"let g:airline_symbols.maxlinenr = 'Ml' "maxline
"let g:airline_symbols.branch = 'BR'
"let g:airline_symbols.readonly = "RO"
"let g:airline_symbols.dirty = "DT"
"let g:airline_symbols.crypt = "CR" 

"let g:airline#extensions#keymap#enabled = 1

" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
"nmap <leader>alt1 <Plug>AirlineSelectTab1
"nmap <leader>alt2 <Plug>AirlineSelectTab2
"nmap <leader>alt3 <Plug>AirlineSelectTab3
"nmap <leader>alt4 <Plug>AirlineSelectTab3
"
 
"切换tab\-切换到前一个tab
"nmap <leader>- <Plug>AirlineSelectPrevTab

"切换tab\+切换到后一个tab
"nmap <leader>+ <Plug>AirlineSelectNextTab

" 换tab\bq退出当前的tab并跳到上一个
"nmap <leader>bp :bp<cr>:bd #<cr>
