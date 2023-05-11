execute ':map <buffer> <Leader>r :tabnew<CR>:term ++curwin ++shell cc ' . expand("%") . ' && ./a.out<CR>'
