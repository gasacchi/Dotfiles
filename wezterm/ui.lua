local wez = require "wezterm"


-- Todo:
-- - fallback font
-- - retro tabbar color
local module = {}


function module.apply_to_config(config)
  -- theme
  config.color_scheme = "GitHub Dark"

  -- fonts
  config.font = wez.font "JetBrainsMono Nerd Font"
  config.font_size = 9

  -- tab bar
	config.use_fancy_tab_bar = false
  config.tab_bar_at_bottom = true

  -- config.window_background_opacity = 0.9
  config.front_end = "WebGpu"

end


return module
