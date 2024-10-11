local installed = require("config.lsps.installed")

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = installed,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      for _, name in ipairs(installed) do
        require("config.lsps.configs." .. name)
      end
      require("config.lsps.keymaps")
    end,
  },
}
