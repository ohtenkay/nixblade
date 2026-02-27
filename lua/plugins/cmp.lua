return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    'xzbdmw/colorful-menu.nvim',
  },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',
      ['<Right>'] = { 'select_and_accept' },
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        window = {
          border = 'rounded',
        },
      },
      menu = {
        draw = {
          gap = 8,
          -- We don't need label_description now because label and label_description are already
          -- combined together in label by colorful-menu.nvim.
          columns = { { 'label' }, { 'kind_icon', 'kind', gap = 1 } },
          components = {
            label = {
              text = function(ctx)
                return require('colorful-menu').blink_components_text(ctx)
              end,
              highlight = function(ctx)
                return require('colorful-menu').blink_components_highlight(ctx)
              end,
            },
          },
        },
      },
    },
    signature = {
      enabled = true,
      window = {
        border = 'rounded',
      },
      trigger = {
        show_on_keyword = true,
      },
    },
    cmdline = {
      keymap = {
        ['<Right>'] = { 'select_and_accept' },
      },
    },
  },
}
