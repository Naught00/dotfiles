filetype plugin indent on
nnoremap <Leader>re :Rexplore <CR> 
let mapleader = " "
syntax on
set number
set tabstop=4
set shiftwidth=4
let g:netrw_banner=0 
set path=.,**
set relativenumber
set expandtab

nnoremap <leader>l :make!<CR>
nnoremap <leader>r :make! run<CR>
nnoremap <leader>q :copen<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>vd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vr <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vgr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>vca <cmd>lua vim.lsp.buf.code_action()<CR>

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'jacoborus/tender.vim'

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'skywind3000/asyncrun.vim'

call plug#end()

lua require'lspconfig'.rust_analyzer.setup({})

set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
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
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['rust_analyzer'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities
  }
EOF
"colorscheme tender
