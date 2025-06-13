return {
    'blazkowolf/gruber-darker.nvim',
    name = 'gruber-darker',
    config = function()
      require('gruber-darker').setup {
        bold = false,
        invert = {},
        italic = {
          strings = false,
          comments = false,
          folds = false,
        },
        undercurl = true,
        underline = false,
      }
      -- Allow transparency when using wezterm/alacritty
		if not vim.g.neovide then
			vim.cmd'hi Normal guibg=NONE ctermbg=NONE'
			vim.cmd'hi NormalNC guibg=NONE ctermbg=NONE'
			vim.cmd'hi Pmenu guibg=NONE ctermbg=NONE'
			vim.cmd'hi LineNr guibg=NONE ctermbg=NONE'
		end
    end,
}