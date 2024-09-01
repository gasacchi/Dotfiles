local wezterm = require "wezterm"


local gelix_theme = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
gelix_theme.background = "#1a1a1a"
gelix_theme.tab_bar.background = "#101010"
gelix_theme.tab_bar.active_tab.bg_color = "#89b4fa"
gelix_theme.tab_bar.inactive_tab.bg_color = "#1a1a1a"
gelix_theme.tab_bar.new_tab.bg_color = "#242424"

return {
  ["gelix"] = gelix_theme
}
