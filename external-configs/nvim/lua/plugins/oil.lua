return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
      local detail = false
      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = false,
          ['<C-k>'] = false,
          ['<C-j>'] = false,
          ['gd'] = {
            desc = 'Toggle file detail view',
            callback = function()
              detail = not detail
              if detail then
                require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
              else
                require('oil').set_columns { 'icon' }
              end
            end,
          },
        },
        win_options = {
          signcolumn = 'yes',
          winbar = '%!v:lua.get_oil_winbar()',
        },
        confirmation = {
          border = 'rounded',
        },
        skip_confirm_for_simple_edits = true,
        watch_for_changes = true,
        view_options = {
          show_hidden = true,
          is_always_hidden = function(name, _)
            return vim.startswith(name, '..')
          end,
        },
        lsp_file_methods = {
          autosave_changes = 'unmodified',
        },
      }

      -- Declare a global function to retrieve the current directory
      function _G.get_oil_winbar()
        local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
        local dir = require('oil').get_current_dir(bufnr)
        if dir then
          return vim.fn.fnamemodify(dir, ':~')
        else
          -- If there is no current directory (e.g. over ssh), just show the buffer name
          return vim.api.nvim_buf_get_name(0)
        end
      end

      -- Open parent directory in current window in preview mode
      vim.keymap.set('n', '-', '<CMD>Oil --preview<CR>', { desc = 'Open parent directory' })
    end,
  },
  {
    'benomahony/oil-git.nvim',
    dependencies = { 'stevearc/oil.nvim' },
  },
}
