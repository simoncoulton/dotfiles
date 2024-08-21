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
        ensure_installed = require("config.lsps.installed"),
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsps.keymaps")
      require("config.lsps.configs.lua")
      require("config.lsps.configs.tsserver")
      require("config.lsps.configs.flow")
    end,
  },
}
