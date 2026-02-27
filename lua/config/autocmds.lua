-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Switch to absolute in Insert mode
vim.api.nvim_create_autocmd('InsertEnter', {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

-- Switch back to relative when leaving Insert mode
vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    vim.opt.relativenumber = true
  end,
})
