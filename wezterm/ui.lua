local wez = require "wezterm"


-- Todo:
-- - fallback font
-- - retro tabbar color
local bg = "/home/gsc/Dev/teapot-env/assets/watame.png"
local module = {}


local colors = {
  -- The default text color
  foreground = "#61586f",
  -- The default background color
  background = "#121311",
}


function module.apply_to_config(config)
  -- theme
  config.colors = colors
  config.window_background_image = bg
  config.window_background_opacity = 0.98

  -- fonts
  config.font = wez.font "JetBrainsMono NF"
  config.font_size = 9

  -- tab bar
  config.use_fancy_tab_bar = false
  config.tab_bar_at_bottom = true

  -- config.window_background_opacity = 0.9
  config.front_end = "WebGpu"
end

return module
