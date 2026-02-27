return {
  'nvim-flutter/flutter-tools.nvim',
  ft = { 'dart' },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    lsp = {
      settings = {
        analysisExcludedFolders = {},
      },
    },
    widget_guides = {
      enabled = true,
    },
  },
}
