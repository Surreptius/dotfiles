-- Initialize Configuration
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local opacity = 0.75
-- local transparent_bg = "rgba(22, 24, 26, " .. opacity .. ")"

-- Font
config.font = wezterm.font_with_fallback({
	{
		family = "Cascadia Code NF",
		weight = "Regular",
	},
	"Segoe UI Emoji",
})
config.font_size = 12

-- Window
config.initial_rows = 45
config.initial_cols = 180
config.window_decorations = "RESIZE"
config.window_background_opacity = opacity
config.window_close_confirmation = "NeverPrompt"
config.win32_system_backdrop = "Acrylic"
config.max_fps = 144
config.animation_fps = 60
config.cursor_blink_rate = 250

-- Colors
local scheme = wezterm.get_builtin_color_schemes()["One Dark (Gogh)"]
scheme.foreground = "#abb2bf"
config.colors = scheme

config.force_reverse_video_cursor = true

-- Shell
config.default_domain = "WSL:Arch"

-- Tabs
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false

-- Keybindings
config.keys = {
	-- Remap paste for clipboard history compatibility
	{ key = "v", mods = "CTRL", action = wezterm.action({ PasteFrom = "Clipboard" }) },
}

return config
