local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", "<cmd>lua require('telescope.builtin').find_files()<CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "  Recently used files", "<cmd>lua require('telescope.builtin').oldfiles()<CR>"),
  dashboard.button("s", "  Last session", "<cmd>lua require('persistence').load({ last = true })<CR>"),
  dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
  dashboard.button("q", "󱓞  Quit Neovim", ":qa<CR>"),
}

local function footer()
  return "Something thoughtful here..."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
