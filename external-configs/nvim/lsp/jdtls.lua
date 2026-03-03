local lombok_helper = require 'helpers.lombok'

local lombok_jar = lombok_helper.get_latest_lombok()
if not lombok_jar then
  vim.notify('Could not find any Lombok JAR in /nix/store', vim.log.levels.ERROR)
end

-- Has to be done by calling the api, returning a table doesn't work
vim.lsp.config.jdtls = {
  cmd = {
    'jdtls',
    '--jvm-arg=-javaagent:' .. (lombok_jar or ''),
  },
}
