filetype plugin indent on
nnoremap <Leader>cp :AsyncRun latexmk -pvc -pdf %<CR>
nnoremap <Leader>re :Rexplore <CR>
syntax on
set number
set tabstop=4
inoremap df <esc>
let g:netrw_banner=0        " disable annoying banner
set background=dark
nnoremap <Leader>fe :AsyncRun markdown.sh %<CR>
nnoremap <Leader>cl :! cargo run <CR>
set path=.,**
