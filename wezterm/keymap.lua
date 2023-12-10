local wez = require "wezterm"
local act = wez.action


wez.on('update-right-status', function(window, _)
  local name = window:active_key_table()
  if name then
    name = 'Table :: ' .. name
  end
  window:set_right_status(name or '')
end)


local module = {}

local leader = { key = "t", mods = "ALT", timeout_milliseconds = 2000 }

local keys = {
  {
    key = "p",
    mods = "LEADER",
    action = act.ActivateKeyTable {
      name = "pane",
    }
  },
  { key = "h", mods = "LEADER", action = act.ActivatePaneDirection "Left" },
  { key = "l", mods = "LEADER", action = act.ActivatePaneDirection "Right" },
  { key = "k", mods = "LEADER", action = act.ActivatePaneDirection "Up" },
  { key = "j", mods = "LEADER", action = act.ActivatePaneDirection "Down" },
  { key = "z", mods = "LEADER", action = act.TogglePaneZoomState },
  { key = "d", mods = "LEADER", action = act.CloseCurrentPane { confirm = true } },
  -- { key = "s", mods = "LEADER", action = act.PaneSelect {} }, -- bug
  {
    key = "r",
    mods = "LEADER",
    action = act.ActivateKeyTable {
      name = "pane_resize",
      one_shot = false
    }
  },


  -- tabs
  { key = "t",   mods = "LEADER",       action = act.SpawnTab "CurrentPaneDomain" },
  { key = "Tab", mods = "CTRL",         action = act.ActivateTabRelative(1) },
  { key = "Tab", mods = "CTRL|SHIFT",   action = act.ActivateTabRelative(-1) },
  { key = "d",   mods = "LEADER|SHIFT", action = act.CloseCurrentTab { confirm = true } },
  { key = "c",   mods = "LEADER",       action = act.ShowTabNavigator },

  -- window
  {
    key = "w",
    mods = "LEADER",
    action = act.ActivateKeyTable {
      name = "window"
    }
  },


  { key = "c", mods = "LEADER", action = act.ShowTabNavigator },








  -- { key = "d",   mods = "LEADER",     action = act.ShowDebugOverlay },
  -- { -- todo: better launcer
  --   key = "c",
  --   mods = "LEADER",
  --   action = act.ShowLauncherArgs {
  --     flags = "FUZZY|LAUNCH_MENU_ITEMS"
  --   }
  -- },
}



local key_tables = {
  pane = {
    { key = "n", action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = "v", action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = "s", action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = "t", action = act.PaneSelect { mode = "SwapWithActive" } },
  },
  pane_resize = {
    { key = "h", action = act.AdjustPaneSize { "Left", 1 } },
    { key = "l", action = act.AdjustPaneSize { "Right", 1 } },
    { key = "k", action = act.AdjustPaneSize { "Up", 1 } },
    { key = "j", action = act.AdjustPaneSize { "Down", 1 } },
    {
      key = "Space",
      action = "PopKeyTable"
    }
  },
  window = {
    { key = "l", action = act.ActivateWindowRelative(1)},
    { key = "h", action = act.ActivateWindowRelative(-1) },
  },
}


function module.apply_to_config(config)
  -- config.disable_default_key_bindings = true
  config.leader = leader
  config.keys = keys
  config.key_tables = key_tables
  config.quick_select_alphabet = "strncdlhaeiyougmvbwkjpxzqf"
end

return module