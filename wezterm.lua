local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.color_scheme = 'GitHub Dark'
config.font = wezterm.font "JetBrainsMono Nerd Font"
config.font_size = 9


return config
