return {
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        features = 'all',
      },
      check = {
        features = 'all',
        command = 'clippy',
        extraArgs = {
          '--all-targets',
          '--',
          '-W',
          'clippy::pedantic',
        },
      },
      diagnostics = {
        styleLints = { enable = true },
      },
    },
  },
}
