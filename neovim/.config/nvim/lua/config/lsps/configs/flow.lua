local lspconfig = require("lspconfig")
local capabilities = require("config.lsps.capabilities")

lspconfig.flow.setup({
	capabilities = capabilities
})
