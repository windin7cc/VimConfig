let g:Lf_ShortcutF = "<leader>ldf"

noremap <leader>lff :<C-U><C-R>=printf("Leaderf file %s", "")<CR><CR>
noremap <leader>lfb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>lfl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>lfw :Leaderf window<CR>
