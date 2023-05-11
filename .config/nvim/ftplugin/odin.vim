function! Get_file()
	let test = expand('%')
	return test
endfunction

execute ':map <buffer> <Leader>r :tabnew<CR>:term odin run ' . Get_file() . ' -file<CR>A'
