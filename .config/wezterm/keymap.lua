local wezterm = require "wezterm"
local action = wezterm.action

local module = {}

module.keys = {
  {
    key = "q",
    mods = "ALT",
    action = action.CloseCurrentPane { confirm = true }
  },
  {
    key = "RightArrow",
    mods = "ALT",
    action = action.ActivatePaneDirection "Right"
  },
  {
    key = "LeftArrow",
    mods = "ALT",
    action = action.ActivatePaneDirection "Left"
  },
  {
    key = "UpArrow",
    mods = "ALT",
    action = action.ActivatePaneDirection "Up"
  },
  {
    key = "DownArrow",
    mods = "ALT",
    action = action.ActivatePaneDirection "Down"
  },
  {
    key = "Tab",
    mods = "CTRL",
    action = action.ActivateTabRelative(1)
  },
  {
    key = "Tab",
    mods = "CTRL|SHIFT",
    action = action.ActivateTabRelative(-1)
  },
  {
    key = "v",
    mods = "CTRL",
    action = action.PasteFrom "Clipboard"
  }
}


return module
