return {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    name = 'gruvbox',
    opts = {
      terminal_colors = true,
      transparent_mode = true,
	    contrast = "hard",
      undercurl = false,
      uderline = false,
      bold = false,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        folds = false,
      },
      palette_overrides = {
        dark0 = '#161616',
        dark0_hard = '#161616',
        dark1 = '#161616',
	    		bright_orange = '#fbf1c7',
      },
      overrides = {
        CursorLine = { bg = '#111144' },
	    	Cursor = { bg = '#00ff33', fg = '#303030'},
        Pmenu = { bg = '#252525' },
        PmenuThumb = { bg = '#252525' },
        PmenuSel = { bg = '#252525' },
        PmenuSbar = { bg = '#252525' },
      },
    }
}
