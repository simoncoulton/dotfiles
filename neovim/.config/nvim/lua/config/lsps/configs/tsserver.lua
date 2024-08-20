local lspconfig = require("lspconfig")
local capabilities = require("config.lsps.capabilities")

lspconfig.tsserver.setup({
  capabilities = capabilities,
})
