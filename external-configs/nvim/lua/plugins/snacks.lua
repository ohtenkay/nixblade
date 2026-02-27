return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    input = { enabled = true },
    quickfile = { enabled = true },
    gitbrowse = { enabled = true },
    image = { enabled = true },
    lazygit = {
      enabled = true,
      win = { width = 0, height = 0 },
    },
    picker = {
      enabled = true,
      previewers = {
        diff = {
          builtin = false,
          cmd = {
            'delta',
            '--file-style=omit',
            '--hunk-header-style=omit',
            '--paging=never',
            '--syntax-theme',
            'Kanagawa Dragon',
          },
        },
      },
      layout = { preset = 'ivy_split' },
    },
    words = { enabled = true, debounce = 40 },
  },
  keys = {
    -- Searches
    {
      '<leader><space>',
      function()
        Snacks.picker.smart()
      end,
      desc = 'Smart Find Files',
    },
    {
      '<leader>,',
      function()
        Snacks.picker.buffers()
      end,
      desc = 'Buffers',
    },
    {
      '<leader>/',
      function()
        Snacks.picker.grep()
      end,
      desc = 'Grep',
    },
    {
      '<leader>s/',
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = 'Grep Open Buffers',
    },
    {
      '<leader>sw',
      function()
        Snacks.picker.grep_word()
      end,
      desc = 'Visual selection or word',
      mode = { 'n', 'x' },
    },
    {
      '<leader>sc',
      function()
        Snacks.picker.command_history()
      end,
      desc = 'Command History',
    },
    {
      '<leader>sC',
      function()
        Snacks.picker.commands()
      end,
      desc = 'Commands',
    },
    {
      '<leader>sd',
      function()
        Snacks.picker.diagnostics()
      end,
      desc = 'Diagnostics',
    },
    {
      '<leader>sD',
      function()
        Snacks.picker.diagnostics_buffer()
      end,
      desc = 'Buffer Diagnostics',
    },
    {
      '<leader>sh',
      function()
        Snacks.picker.help()
      end,
      desc = 'Help Pages',
    },
    {
      '<leader>si',
      function()
        Snacks.picker.icons()
      end,
      desc = 'Icons',
    },
    {
      '<leader>sk',
      function()
        Snacks.picker.keymaps()
      end,
      desc = 'Keymaps',
    },
    {
      '<leader>sr',
      function()
        Snacks.picker.resume()
      end,
      desc = 'Resume',
    },
    {
      '<leader>su',
      function()
        Snacks.picker.undo { layout = { preset = 'ivy', layout = { height = 0.55 } } }
      end,
      desc = 'Undo History',
    },
    {
      '<leader>sn',
      function()
        Snacks.picker.files {
          cwd = vim.fn.stdpath 'config',
        }
      end,
      desc = 'Neovim Config',
    },
    -- LSP
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Goto Definition',
    },
    {
      'gD',
      function()
        Snacks.picker.lsp_declarations()
      end,
      desc = 'Goto Declaration',
    },
    {
      'grr',
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = 'References',
    },
    {
      'gri',
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = 'Goto Implementation',
    },
    {
      'grt',
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = 'Goto Type Definition',
    },
    {
      'gO',
      function()
        Snacks.picker.lsp_symbols { layout = 'right' }
      end,
      desc = 'LSP Symbols',
    },
    {
      'grO',
      function()
        Snacks.picker.lsp_workspace_symbols {
          layout = { preset = 'right', layout = {
            width = 0.5,
          } },
        }
      end,
      desc = 'LSP Workspace Symbols',
    },
    -- Others
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      ']]',
      function()
        Snacks.words.jump(vim.v.count1)
      end,
      desc = 'Next Reference',
      mode = { 'n', 't' },
    },
    {
      '[[',
      function()
        Snacks.words.jump(-vim.v.count1)
      end,
      desc = 'Prev Reference',
      mode = { 'n', 't' },
    },
  },
}
