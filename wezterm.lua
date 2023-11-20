local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.color_scheme = "GitHub Dark"
config.font = wezterm.font "JetBrainsMono Nerd Font"
config.font_size = 9
config.front_end = "WebGpu"
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

return config
