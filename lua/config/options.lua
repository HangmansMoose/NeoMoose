-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Stupidly this is the value to stop the whitespace characters showing up (like - for space)
vim.opt.list = false

-- Neovide specific options
if vim.g.neovide or vim.g.nvy then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scroll_animation_length = 0.15
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_position_animation_length = 0
  vim.o.guifont = "CaskaydiaMono_Nerd_Font:h13:#e-subpixelantialias"
  vim.g.neovide_transparency = 1
  vim.g.neovide_remember_window_size = true
  -- vim.g.neovide_fullscreen = true
end
local toggle_header_cpp = function()
  local baseFilePath = vim.fn.expand("%:r")
  local currentFileExtension = vim.fn.expand("%:e")
  local switchToFileName

  if currentFileExtension == "cpp" then
    switchToFileName = baseFilePath .. ".h"
  elseif currentFileExtension == "h" then
    switchToFileName = baseFilePath .. ".cpp"
  else
    print("Not a C/C++ file.")
    return
  end

  local openFileCmd = "e " .. switchToFileName

  vim.cmd(openFileCmd)
end

vim.keymap.set("n", "<A-h>", toggle_header_cpp, { desc = "Switch between cpp and header file" })

vim.lsp.set_log_level("error")

vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  },
})
