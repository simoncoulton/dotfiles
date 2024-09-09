local lspconfig = require("lspconfig")
local capabilities = require("config.lsps.capabilities")

lspconfig.ts_ls.setup({
	capabilities = capabilities,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
	on_attach = function(client, bufnr)
		local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")
		if filetype ~= "typescript" and filetype ~= "typescriptreact" and filetype ~= "typescript.tsx" then
			-- This is a hack to prevent TS running on .js & .jsx files
			-- even when it is configured not to.
			client.stop()
		end
	end,
})
