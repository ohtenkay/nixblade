vim.lsp.enable {
  'lua_ls',
  -- 'kotlin_lsp',
  'ts_ls',
  'svelte',
  'tailwindcss',
  'nixd',
  'jdtls',
  'hls',
}
--
-- vim.lsp.config.jdtls = {
--   cmd = {
--     "jdtls",
--     "--jvm-arg=-javaagent:" .. vim.fn.expand(
--       "/nix/store/*-lombok-*/share/java/lombok.jar"
--     ),
--   },
-- }
