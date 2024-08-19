return {
	"SmiteshP/nvim-navic",
	dependencies = {
		"LunarVim/breadcrumbs.nvim",
	},
	config = function()
		require("nvim-navic").setup({
			lsp = {
				auto_attach = true,
			},
		})

		require("breadcrumbs").setup()
	end,
}
