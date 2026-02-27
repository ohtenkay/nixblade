return {
  {
    'zbirenbaum/copilot.lua',
    event = 'InsertEnter',
    cmd = 'Copilot',
    opts = {
      panel = {
        enabled = false,
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<M-L>',
          accept_word = '<M-l>',
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
      },
    },
  },
}
