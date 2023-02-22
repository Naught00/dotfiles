lua <<EOF
vim.api.nvim_create_autocmd('TermClose', {
  callback = function(ctx)
    vim.cmd('stopinsert')
    vim.api.nvim_create_autocmd('TermEnter', {
      callback = function()
        vim.cmd('stopinsert')
      end,
      buffer = ctx.buf,
    })
  end,
  nested = true,
})
EOF
