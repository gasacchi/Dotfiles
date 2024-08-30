local wezterm = require "wezterm"


local gelix_theme = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
gelix_theme.background = "#1a1a1a"

return {
  ["gelix"] = gelix_theme
}
