_G.dd = function(...)
  Snacks.debug.inspect(...)
end
_G.bt = function()
  Snacks.debug.backtrace()
end
vim.print = _G.dd

-- Neovide specific options
if vim.g.neovide or vim.g.nvy then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scroll_animation_length = 0.15
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_position_animation_length = 0
  vim.o.guifont = 'CaskaydiaMono_Nerd_Font:h14:#e-subpixelantialias'
  vim.g.neovide_transparency = 1
  vim.g.neovide_remember_window_size = true
  -- vim.g.neovide_fullscreen = true
end

require("config.lazy")
