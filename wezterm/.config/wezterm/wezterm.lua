local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

config.color_scheme = "Catppuccin Frappe"
config.font = wezterm.font_with_fallback({
  -- { family = "Hack Nerd Font" },
  { family = "MesloLGL Nerd Font" },
  { family = "FiraCode Nerd Font" },
  "Symbols Nerd Font Mono",
})
config.font_size = 14

config.scrollback_lines = 3000

config.adjust_window_size_when_changing_font_size = false

--config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.underline_position = -2

-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

local window_min = ' 󰖰 '
local window_max = ' 󰖯 '
local window_close = ' 󰅖 '
config.tab_bar_style = {
    window_hide = window_min,
    window_hide_hover = window_min,
    window_maximize = window_max,
    window_maximize_hover = window_max,
    window_close = window_close,
    window_close_hover = window_close,
}

config.tab_max_width = 100

config.use_fancy_tab_bar = false;

-- config.window_decorations = "TITLE | RESIZE"
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

config.keys = {
  {
    mods = "CMD",
    key = "=",
    action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    mods = "CMD",
    key = "-",
    action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  {
    mods = "CMD",
    key = "x",
    action = act.CloseCurrentPane({ confirm = true }),
  },
  {
    mods = "CMD",
    key = "h",
    action = act.ActivatePaneDirection("Left"),
  },
  {
    mods = "CMD",
    key = "k",
    action = act.ActivatePaneDirection("Up"),
  },
  {
    mods = "CMD",
    key = "j",
    action = act.ActivatePaneDirection("Down"),
  },
  {
    mods = "CMD",
    key = "l",
    action = act.ActivatePaneDirection("Right"),
  },
  {
    mods = "CMD",
    key = "LeftArrow",
    action = act.AdjustPaneSize({ "Left", 5 }),
  },
  {
    mods = "CMD",
    key = "RightArrow",
    action = act.AdjustPaneSize({ "Right", 5 }),
  },
  {
    mods = "CMD",
    key = "UpArrow",
    action = act.AdjustPaneSize({ "Up", 5 }),
  },
  {
    mods = "CMD",
    key = "DownArrow",
    action = act.AdjustPaneSize({ "Down", 5 }),
  },
}

return config
