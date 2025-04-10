return {
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        keywordStyle = { italic = false },
        commentStyle = { italic = false },
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
                bg_gutter = '#181818',
                bg = '#181818',
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
    end,
  },
}
