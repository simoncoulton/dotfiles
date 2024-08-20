return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme("catppuccin-frappe")
      require("catppuccin").setup({
        integrations = {
          navic = {
            enabled = true,
            custom_bg = "lualine",
          },
        },
      })
    end,
  },
}
