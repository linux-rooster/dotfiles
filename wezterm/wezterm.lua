-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox Material (Gogh)'
-- change font
config.font = wezterm.font { family = 'JetBrainsMonoNL Nerd Font' }


config.font_size = 14
-- i dont use tabs. set this to true if you want the tab bar. i use tmux.
config.enable_tab_bar = false
-- set cursor style
config.default_cursor_style = "SteadyBar"
-- disable the cursor blinking
config.cursor_blink_rate = 0
-- change the shell
config.default_prog = {'/usr/bin/fish'}

font_rules = {
  {
	intensity = 'Normal',
	italic = false,
	font = wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Medium", stretch="Normal", style="Normal"})
  },	
  {
    intensity = 'Bold',
    italic = false,
    font = wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}) 
  },
  {
    intensity = 'Bold',
    italic = true,
    font = wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Bold", stretch="Normal", style="Italic"}) 
  },
}

-- and finally, return the configuration to wezterm
return config
