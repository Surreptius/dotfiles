local wezterm = require("wezterm")

return {
	color_scheme_dirs = { "~/.config/wezterm/colors" },

	-- Earthsong, Grey-green, GruvboxDark, niji, SeaShells, Spacedust, terafox, Twilight
	color_scheme = "Everforest Dark (Medium)",

	font = wezterm.font("ComicShannsMono Nerd Font"),
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
	font_size = 14.0,

	enable_tab_bar = false,

	window_background_opacity = 0.8,
	macos_window_background_blur = 16,
	window_decorations = "RESIZE",
}
