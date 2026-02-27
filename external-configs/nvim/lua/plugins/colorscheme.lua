return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup {
      keywordStyle = { italic = false },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = 'none',
            },
          },
        },
      },
      background = {
        dark = 'dragon',
      },
      -- Dark completion menu
      overrides = function(colors)
        local theme = colors.theme
        return {
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend },
          PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
          -- NormalFloat = { bg = theme.ui.bg_m1 },
          -- FloatBorder = { bg = theme.ui.bg_m1 },
          -- FloatTitle = { bg = theme.ui.bg_m1 },
          NormalFloat = { bg = 'none' },
          FloatBorder = { bg = 'none' },
          FloatTitle = { bg = 'none' },
        }
      end,
    }

    vim.cmd.colorscheme 'kanagawa'
  end,
}
