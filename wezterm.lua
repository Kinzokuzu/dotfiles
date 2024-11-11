-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font_size = 14.0

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.colors = {
   foreground = "#fcfcfa",  -- text
   background = "#2d2a2e",  -- background
   cursor_bg = "#fcfcfa",   -- text (for the cursor)
   cursor_border = "#fcfcfa",
   cursor_fg = "#2d2a2e",   -- background (cursor contrast)
   selection_bg = "#5b595c", -- dimmed4
   selection_fg = "#fcfcfa", -- text

   ansi = {
      "#19181a", -- dark2
      "#ff6188", -- accent1
      "#a9dc76", -- accent4
      "#ffd866", -- accent3
      "#78dce8", -- accent5
      "#ab9df2", -- accent6
      "#fc9867", -- accent2
      "#c1c0c0", -- dimmed1
   },
   
   brights = {
      "#403e41", -- dimmed5
      "#ff6188", -- accent1 (brighter shade for bold red)
      "#a9dc76", -- accent4
      "#ffd866", -- accent3
      "#78dce8", -- accent5
      "#ab9df2", -- accent6
      "#fc9867", -- accent2
      "#fcfcfa", -- text
   },

   -- tab_bar = {
   --    background = "#221f22", -- dark1
   --    active_tab = {
   --       bg_color = "#2d2a2e", -- background
   --       fg_color = "#fcfcfa", -- text
   --    },
   --    inactive_tab = {
   --       bg_color = "#221f22", -- dark1
   --       fg_color = "#939293", -- dimmed2 (border)
   --    },
   --    inactive_tab_hover = {
   --       bg_color = "#403e41", -- dimmed5
   --       fg_color = "#fcfcfa", -- text
   --    },
   -- },
}

-- and finally, return the configuration to wezterm
return config
