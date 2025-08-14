local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 13.0
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
-- config.color_scheme = 'OneDark (base16)'
config.colors = require('cyberdream')

return config
