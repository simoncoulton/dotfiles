-- local opts = { buffer = bufnr, noremap = true, silent = true }

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
	callback = function(event)
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = event.buf, silent = true, desc = "LSP: " .. desc })
		end

		local builtin = require("telescope.builtin")
		map("gd", builtin.lsp_definitions, "Goto Definition")
		map("gr", builtin.lsp_references, "Goto References")
		map("gi", builtin.lsp_implementations, "Goto Implementation")
		map("go", builtin.lsp_type_definitions, "Type Definition")
		map("<leader>p", builtin.lsp_document_symbols, "Document Symbols")
		map("<leader>P", builtin.lsp_workspace_symbols, "Workspace Symbols")
		map("<leader>Ps", builtin.lsp_dynamic_workspace_symbols, "Workspace Symbols")

		map("gl", vim.diagnostic.open_float, "Open Diagnostic Float")
		map("K", vim.lsp.buf.hover, "Hover Documentation")
		map("gs", vim.lsp.buf.signature_help, "Signature Documentation")
		map("gD", vim.lsp.buf.declaration, "Goto Declaration")

		local wk = require("which-key")
    local buf = vim.lsp.buf
		wk.add({
			{ "<leader>la", buf.code_action, desc = "Code Action" },
			{ "<leader>lA", buf.range_code_action, desc = "Range Code Actions" },
			{ "<leader>ls", buf.signature_help, desc = "Display Signature Information" },
			{ "<leader>lr", buf.rename, desc = "Rename all references" },
			{ "<leader>lf", buf.format, desc = "Format" },
			{ "<leader>li", builtin.lsp_implementations, desc = "Implementation" },
			{ "<leader>lw", builtin.diagnostics, desc = "Diagnostics" },
			{ "<leader>Wa", buf.add_workspace_folder, desc = "Workspace Add Folder" },
			{ "<leader>Wr", buf.remove_workspace_folder, desc = "Workspace Remove Folder" },
			{
				"<leader>Wl",
				function()
					print(vim.inspect(buf.list_workspace_folders()))
				end,
				desc = "Workspace List Folders",
			},
		})
	end,
})
