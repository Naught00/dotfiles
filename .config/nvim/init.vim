filetype plugin indent on
"source ~/.config/nvim/term.vim
nnoremap <Leader>re :Rexplore <CR> 
let mapleader = " "
syntax on
set number
"set tabstop=8
set shiftwidth=8
let g:netrw_banner=0
set path=.,**
set relativenumber
set mouse= "Disable mouse. Don't know why this is on by default.
inoremap jk <esc>

"set expandtab This converts tabs into spaces.

nnoremap <leader>l :make<CR>
tnoremap <C-w> <C-\><C-n><C-w>
nnoremap <leader>da :lua require('cmp').setup.buffer { enabled = false }<CR>
nnoremap <leader>ea :lua require('cmp').setup.buffer { enabled = true }<CR>
nnoremap <leader>t :tabnew<CR>:term make run<CR>A<CR>
nnoremap <leader>j :bp<CR>
nnoremap <leader>r :make run<CR>
nnoremap <leader>q :copen<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>jd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vr <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'mfussenegger/nvim-jdtls'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'SirVer/ultisnips'
Plug 'Tetralux/odin.vim'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'skywind3000/asyncrun.vim'

call plug#end()

set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    enabled = false,
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' }, -- For ultisnips users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['rust_analyzer'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['gopls'].setup {
    capabilities = capabilities
  }
EOF
set background=light
set guicursor=
