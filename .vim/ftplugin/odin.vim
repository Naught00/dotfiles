execute ':map <buffer> <Leader>r :tabnew<CR>:term ++curwin odin run ' . expand("%") . ' -file<CR>'
nnoremap <leader>t :tabnew<CR>:term ++curwin odin run .<CR>
