-- .wezterm.lua
-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux
wezterm.on('mux-startup', function()
  local tab, pane, window = mux.spawn_window ()
  pane:split { direction = 'Top' }
  end)

local config = wezterm.config_builder()
config = {
   color_scheme = "Afterglow",
   window_background_opacity = .52,

   scrollback_lines = 3500,
   enable_scroll_bar = lse,
   cursor_blink_rate = 800, -- (ms)
   default_cursor_style = 'BlinkingUnderline',

   font = wezterm.font_with_fallback {
     'Fira Code',
     'DengXian', 'Source Han Sans SC VF',
    },
   font_size = 9
}

config.keys = {
   { key = 'P',
     mods = 'SHIFT|CTRL',
     action = wezterm.action.PasteFrom 'Clipboard',
   },
   { key = 'C',
     mods = 'SHIFT|CTRL',
     action = wezterm.action.CopyTo 'Clipboard',
   },


}

return config
