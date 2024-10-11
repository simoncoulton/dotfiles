local lspconfig = require("lspconfig")
local capabilities = require("config.lsps.capabilities")

lspconfig.denols.setup({
	capabilities = capabilities
})
