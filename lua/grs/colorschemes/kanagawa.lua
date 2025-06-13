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
                fg_reverse = '#DCD7BA',
              },
            },
          },
        },
      overrides = function()
        return {
          ['@variable.builtin'] = { italic = false },
        }
      end,
    }  
  }
}
