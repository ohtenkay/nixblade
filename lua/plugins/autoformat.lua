return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>lf',
      function()
        require('conform').format { async = true }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  ---@module "conform"
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      typescript = { 'prettierd' },
      javascript = { 'prettierd' },
      javascriptreact = { 'prettierd' },
      typescriptreact = { 'prettierd' },
      css = { 'prettierd' },
      scss = { 'prettierd' },
      html = { 'prettierd' },
      json = { 'prettierd' },
      jsonc = { 'prettierd' },
      svelte = { 'prettierd' },
    },
    default_format_opts = {
      lsp_format = 'fallback',
    },
    format_on_save = { timeout_ms = 500 },
  },
}
