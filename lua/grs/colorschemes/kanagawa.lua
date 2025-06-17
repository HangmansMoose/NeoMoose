return {
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    priority = 1000,
	  opts = {
	    keywordStyle = { italic = false },
      commentStyle = { italic = false },
	    theme = "wave",
			transparent = true,
        colors = {
          theme = {
            dragon = {
              ui = {
                bg = '#181818',
                bg_gutter = '#181818',
                bg_p2 = '#111144', -- this controls current line colour
                float = { bg = '#1b1b1b' },
                pmenu = {
                  bg = '#1b1b1b',
                },
                pmenuSbar = { bg = '#1b1b1b' },
              },
            },
            wave = {
              ui = {
                bg_gutter = '#151515',
                bg = '#151515',
                bg_p2 = '#111144',
                bg_p1 = "#151515",
                fg_reverse = '#DCD7BA',
                float = { bg_border = "#151515" },
              },
            },
          },
        },
      overrides = function(colors)
        return {
          ['@variable.builtin'] = { italic = false },
          Cursor = { fg = "#303030", bg = "#00ff33" }
        }
      end,
    }  
  }
}
