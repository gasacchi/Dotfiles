local wezterm = require "wezterm"
local gelix_theme = require "themes"
local keymap = require "keymap"

local config = wezterm.config_builder()

config.disable_default_key_bindings = true
config.keys = keymap.keys

config.color_schemes = gelix_theme
config.color_scheme = "gelix"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.window_padding = {
  left = 10,
  right = 10,
  top = 5,
  bottom = 5
}
config.window_background_opacity = 0.9
config.font = wezterm.font_with_fallback { "JetBrainsMono Nerd Font" }
config.default_prog = { "helix", }

-- config.window_decorations = "RESIZE"

return config
