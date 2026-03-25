local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action

local config = wezterm.config_builder()
local keys = {}
local mouse_bindings = {}
local launch_menu = {}

config.audible_bell = "Disabled"
config.color_scheme = "neobones_dark"
config.enable_tab_bar = false
config.default_cursor_style = "SteadyBlock"

-- Keybindings
config.disable_default_key_bindings = true
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 }
keys = {
	-- Allow CTRL+a to make it to applications in terminal	
	{ key = "a",     mods = "LEADER|CTRL",  action = act.SendKey { key = "a", mods = "CTRL" } },

	-- System agnostic actions
	{ key = 'l',     mods = 'ALT',          action = act.ShowLauncher },
	{ key = 'c',     mods = 'ALT',          action = act.CopyTo "Clipboard" },
	{ key = 'v',     mods = 'ALT',          action = act.PasteFrom "Clipboard" },
	{ key = "Enter", mods = "ALT",          action = act.ToggleFullScreen },
	{ key = "t",     mods = "ALT",          action = act.SpawnTab "CurrentPaneDomain" },

	-- Multiplexor (tmux defaults)
	{ key = "\"",    mods = "LEADER|SHIFT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
	{ key = "%",     mods = "LEADER|SHIFT", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
	{ key = "c",     mods = "LEADER",       action = act.SpawnTab "CurrentPaneDomain" },
	{ key = "n",     mods = "LEADER",       action = act.ActivateTabRelative(1) },
	{ key = "p",     mods = "LEADER",       action = act.ActivateTabRelative(-1) },
	{ key = "&",     mods = "LEADER|SHIFT", action = act.CloseCurrentTab { confirm = false } },
	{ key = "x",     mods = "LEADER",       action = act.CloseCurrentPane { confirm = false } },
	{ key = "z",     mods = "LEADER",       action = act.TogglePaneZoomState },
	{ key = "}",     mods = "LEADER|SHIFT", action = act.RotatePanes "Clockwise" },
	{ key = "{",     mods = "LEADER|SHIFT", action = act.RotatePanes "CounterClockwise" },

	-- Multiplexor (custom)
	{ key = "h",     mods = "LEADER",       action = act.ActivatePaneDirection "Left" },
	{ key = "j",     mods = "LEADER",       action = act.ActivatePaneDirection "Down" },
	{ key = "k",     mods = "LEADER",       action = act.ActivatePaneDirection "Up" },
	{ key = "l",     mods = "LEADER",       action = act.ActivatePaneDirection "Right" },
	{ key = "H",     mods = "LEADER|SHIFT", action = act.AdjustPaneSize { "Left", 5 } },
	{ key = "J",     mods = "LEADER|SHIFT", action = act.AdjustPaneSize { "Down", 5 } },
	{ key = "K",     mods = "LEADER|SHIFT", action = act.AdjustPaneSize { "Up", 5 } },
	{ key = "L",     mods = "LEADER|SHIFT", action = act.AdjustPaneSize { "Right", 5 } },
}
config.keys = keys

-- Set WSL default
if wezterm.target_triple:find("windows") then
	config.default_prog = { "wsl.exe", "-d", "Ubuntu" }

	config.launch_menu = {
		{
			label = "PowerShell",
			args = { "powershell.exe" },
		},
		{
			label = "Ubuntu (WSL)",
			args = { "wsl.exe", "-d", "Ubuntu" },
		},
	}
end

return config
