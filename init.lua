require("config.lazy")

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_scroll_animation_length = 0.15
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_position_animation_length = 0
  vim.o.guifont = "CaskaydiaMono_Nerd_Font:h15:#e-subpixelantialias"
  vim.g.neovide_opacity = 1.00
  vim.g.neovide_normal_opacity = 1.00
  vim.g.neovide_remember_window_size = true
  -- vim.g.neovide_fullscreen = true
end

-- TODO: need to move these into their respective files as part of the setup.

-- vim.cmd'colorscheme jellybeans'

--local function set_hl(group, values)
--  vim.api.nvim_set_hl(0, group, values)
--end
--
----set_hl("CursorLine", { bg = "#111144" })
----set_hl("Cursor", { bg = "#00ff33", fg = "#303030" })
----set_hl("SnacksPicker", { bg = "#181818" })
----set_hl("SnacksPickerBorder", { bg = "#181818" })
--
--
--if vim.g.colors_name == "naysayer" then
--  --if vim.g.neovide then
--  set_hl("Normal", { bg = "#1b1b1b" })
--  set_hl("EndofBuffer", { bg = "#1b1b1b" })
--  set_hl("LineNr", { bg = "#1b1b1b", fg = "#bdb395" })
--  set_hl("NormalFloat", { bg = "#1b1b1b" })
--  set_hl("NormalPopup", { bg = "#1b1b1b" })
--  set_hl("NormalPopOver", { bg = "#1b1b1b" })
--  set_hl("SignColumn", { bg = "#1b1b1b" })
--  --vim.cmd 'hi Normal guibg=#1a1a1a'
--  --vim.cmd 'hi NormalNC guibg=#1a1a1a'
--  --vim.cmd 'hi Pmenu guibg=#1c1c1c'
--  set_hl("SnacksPicker", { bg = "#1a1a1a" })
--  set_hl("SnacksPickerBorder", { bg = "#1a1a1a" })
--  --vim.cmd 'hi Cursor guibg=#00ff33 guifg=#303030'
--  --else
--  --  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
--  --  vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
--  --  vim.cmd("hi Cursor guibg=#00ff33 guifg=#303030")
--  --end
--elseif vim.g.colors_name == "sonokai" then
--  --if vim.g.neovide then
--  set_hl("Normal", { bg = "#1b1b1b" })
--  set_hl("EndofBuffer", { bg = "#1b1b1b" })
--  set_hl("LineNr", { bg = "#1b1b1b", fg = "#bdb395" })
--  set_hl("NormalFloat", { bg = "#1b1b1b" })
--  set_hl("NormalPopup", { bg = "#1b1b1b" })
--  set_hl("NormalPopOver", { bg = "#1b1b1b" })
--  set_hl("SignColumn", { bg = "#1b1b1b" })
--  --vim.cmd 'hi Normal guibg=#1a1a1a'
--  --vim.cmd 'hi NormalNC guibg=#1a1a1a'
--  --vim.cmd 'hi Pmenu guibg=#1c1c1c'
--  set_hl("SnacksPicker", { bg = "#1a1a1a" })
--  set_hl("SnacksPickerBorder", { bg = "#1a1a1a" })
--  --vim.cmd 'hi Cursor guibg=#00ff33 guifg=#303030'
--  --else
--  --  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
--  --  vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
--  --  vim.cmd("hi Cursor guibg=#00ff33 guifg=#303030")
--  --end
--elseif vim.g.colors_name == "night-owl" then
--  --if vim.g.neovide then
--  set_hl("Normal", { bg = "#1b1b1b" })
--  set_hl("EndofBuffer", { bg = "#1b1b1b" })
--  set_hl("LineNr", { bg = "#1b1b1b", fg = "#bdb395" })
--  set_hl("NormalFloat", { bg = "#1b1b1b" })
--  set_hl("NormalPopup", { bg = "#1b1b1b" })
--  set_hl("NormalPopOver", { bg = "#1b1b1b" })
--  set_hl("SignColumn", { bg = "#1b1b1b" })
--  --vim.cmd 'hi Normal guibg=#1a1a1a'
--  --vim.cmd 'hi NormalNC guibg=#1a1a1a'
--  --vim.cmd 'hi Pmenu guibg=#1c1c1c'
--  set_hl("SnacksPicker", { bg = "#1a1a1a" })
--  set_hl("SnacksPickerBorder", { bg = "#1a1a1a" })
--  --vim.cmd 'hi Cursor guibg=#00ff33 guifg=#303030'
--  --else
--  --  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
--  --  vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
--  --  vim.cmd("hi Cursor guibg=#00ff33 guifg=#303030")
--  --end
--elseif vim.g.colors_name == "doom-one" then
--  set_hl("Normal", { bg = "#23282f" })
--  set_hl("EndofBuffer", { bg = "#23282f" })
--  set_hl("LineNr", { bg = "#23282f" })
--  set_hl("NormalFloat", { bg = "#23282f" })
--  set_hl("NormalPopup", { bg = "#23282f" })
--  set_hl("NormalPopOver", { bg = "#23282f" })
--  set_hl("SignColumn", { bg = "#23282f" })
--  --vim.cmd 'hi Normal guibg=#1a1a1a'
--  --vim.cmd 'hi NormalNC guibg=#1a1a1a'
--  --vim.cmd 'hi Pmenu guibg=#1c1c1c'
--  set_hl("SnacksPicker", { bg = "#23282f" })
--  set_hl("SnacksPickerBorder", { bg = "#23282f" })
--  --vim.cmd 'hi Cursor guibg=#00ff33 guifg=#303030'
--end
