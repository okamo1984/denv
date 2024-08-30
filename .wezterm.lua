local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Everforest Dark Soft (Gogh)"

config.font_size = 16.0
config.font = wezterm.font("JetBrains Mono")

config.window_frame = {
	font_size = 16.0,
}

config.default_cursor_style = "SteadyUnderline"

return config
