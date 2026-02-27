return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      vim.cmd [[hi TreesitterContext guibg=NONE ctermbg=NONE]]
      vim.cmd [[hi TreesitterContextLineNumberBottom gui=underline guisp=Grey]]
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'master', -- TODO: switch to main after treesitter 1.0
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        'bash',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'vim',
        'vimdoc',
        'query',
        'html',
        'latex',
        'yaml',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
