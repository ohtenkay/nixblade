vim.api.nvim_create_user_command('Gitbrowse', function()
  require('snacks').gitbrowse()
end, { nargs = 0 })
