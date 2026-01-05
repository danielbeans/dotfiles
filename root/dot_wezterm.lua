local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action

local config = wezterm.config_builder()
local keys = {}
local mouse_bindings = {}
local launch_menu = {}

config.color_scheme = "neobones_dark"
config.enable_tab_bar = false

return config
