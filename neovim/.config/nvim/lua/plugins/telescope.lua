return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
		keys = {
			{
				"<leader>sg",
				function()
					require("telescope.builtin").git_files()
				end,
				desc = "[S]earch [G]it Files",
			},
			{
				"<leader>fg",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "[F]ind [G]rep",
			},
			{
				"<C-p>",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "[C]ommand [P]alette",
			},
			{
				"<leader>fb",
				function()
					require("telescope.builtin").buffers()
				end,
				desc = "[F]ind [B]uffers",
			},
			{
				"<leader>fh",
				function()
					require("telescope.builtin").help_tags()
				end,
				desc = "[F]ind [H]elp",
			},
			{
				"<leader>o",
				function()
					require("telescope.builtin").buffers()
				end,
				desc = "Buffers",
			},
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				pickers = {
					buffers = {
						mappings = {
							i = {
								["<c-d>"] = actions.delete_buffer,
							},
							n = {
								["<c-d>"] = actions.delete_buffer,
							},
						},
						previewer = false,
						initial_mode = "normal",
						layout_config = {
							height = 0.4,
							width = 0.6,
							prompt_position = "top",
							preview_cutoff = 120,
						},
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
