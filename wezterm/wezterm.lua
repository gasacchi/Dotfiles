local wezterm = require "wezterm"
local ui = require "ui"
local keymap = require "keymap"
local launcher = require "launcher"
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

ui.apply_to_config(config)
keymap.apply_to_config(config)
launcher.apply_to_config(config)




return config
