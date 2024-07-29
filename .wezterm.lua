-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = "Tokyo Night"

config.font = wezterm.font("Rec Mono Linear")
config.font_size = 16
config.enable_tab_bar = true
config.default_cursor_style = "BlinkingUnderline"
-- config.window_decorations = "RESIZE"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
