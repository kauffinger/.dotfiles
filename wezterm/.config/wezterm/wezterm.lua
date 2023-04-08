local wezterm = require 'wezterm'

wezterm.on('bell', function(window, pane)
  wezterm.log_info('the bell was rung in pane ' .. pane:pane_id() .. '!')
end)

return {
  font = wezterm.font('MonoLisa', { weight = "Bold" }),
  freetype_load_target = "Light",
  freetype_render_target = "HorizontalLcd",
  color_scheme = "Gruvbox dark, hard (base16)",
  font_size = 13,
  line_height = 0.95,
  hide_tab_bar_if_only_one_tab = false,
  adjust_window_size_when_changing_font_size = false,
  selection_word_boundary = " \t\n{}[]()\"'`,;:│=&!%",
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  use_fancy_tab_bar = false,
  exit_behavior = "CloseOnCleanExit",
  tab_bar_at_bottom = false,
  window_close_confirmation = "AlwaysPrompt",
  audible_bell = "Disabled",
  -- visual_bell = {
  --   fade_in_duration_ms = 75,
  --   fade_out_duration_ms = 75,
  --   target = 'CursorColor',
  -- }
}
