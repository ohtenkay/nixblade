return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    globalstatus = true,
    sections = {
      lualine_x = { 'encoding', 'lsp_status', 'filetype', 'grapple' },
    },
  },
}
