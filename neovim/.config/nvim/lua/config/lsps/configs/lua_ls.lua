local lspconfig = require("lspconfig")
local capabilities = require("config.lsps.capabilities")

lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
