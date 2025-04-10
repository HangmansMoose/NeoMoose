return {
    {
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
        name = 'gruvbox',
        config = function()
          require('gruvbox').setup {
            terminal_colors = true,
            transparent_mode = false,
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
              dark0 = '#181818',
              dark0_hard = '#181818',
              dark1 = '#181818',
            },
            overrides = {
              CursorLine = { bg = '#252525' },
              Pmenu = { bg = '#252525' },
              PmenuThumb = { bg = '#252525' },
              PmenuSel = { bg = '#252525' },
              PmenuSbar = { bg = '#252525' },
            },
          }
        end,
      },
}