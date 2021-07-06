"--taglist config begin--
let Tlist_Show_One_File=1    " Disp 1 file.
let Tlist_Exit_OnlyWindow=1  " exit when it's only one window.
let Tlist_Use_Right_Window=0 " disp on the left.
let Tlist_Sort_Type="name"   " disp tag sort by name.
"--taglist config end--

"--TagList map:--
map <Leader>tl :TlistToggle<CR>
"--TagList map$--
