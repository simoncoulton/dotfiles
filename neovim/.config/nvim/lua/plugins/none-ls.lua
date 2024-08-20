return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        -- TS/JS
        require("none-ls.diagnostics.eslint"),
        require("none-ls.code_actions.eslint"),
        null_ls.builtins.formatting.prettier,
        -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
      },
    })
  end,
}
