local opts = { buffer = bufnr, noremap = true, silent = true }

vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
--vim.keymap.set("n", "<leader>d", vim.lsp.diagnostic.show_line_diagnostics, opts)
