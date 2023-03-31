filetype plugin indent on
let mapleader = " "

nnoremap <leader>r :make run<CR>
"nnoremap <Leader>cp :AsyncRun latexmk -pvc -pdf %<CR>
nnoremap <Leader>e :Rexplore <CR>
nnoremap <leader>q :copen<CR>
nnoremap <leader>c :cclose<CR>
"nnoremap <leader>t :term make run<CR>
nnoremap <leader>l :silent make<CR>:redraw!<CR>
autocmd TerminalOpen * nnoremap <buffer> f <C-W>q
nnoremap <leader>t :tabnew<CR>:term ++curwin make run<CR>

syntax on
set number
set relativenumber
inoremap df <esc>
inoremap <C-@> <C-m>
inoremap <C-k> <C-h>
"let g:netrw_banner=0        " disable annoying banner
"nnoremap <Leader>fe :AsyncRun markdown.sh %<CR>
"nnoremap <Leader>cl :! cargo run <CR>
set path=.,**
