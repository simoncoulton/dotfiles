return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function()
      vim.cmd.colorscheme("catppuccin-frappe")
      require("catppuccin").setup({})
    end,
  },

  --{
  --	"olimorris/onedarkpro.nvim",
  --	--"navarasu/onedark.nvim",
  --	lazy = false,
  --	priority = 1000,
  --	config = function()
  --		vim.cmd([[colorscheme onedark]])
  --		--require("onedark").setup({
  --		--transparent = true,
  --		--})
  --	end,
  --},
}
