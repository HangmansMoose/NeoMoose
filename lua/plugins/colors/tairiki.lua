return {
    {
        'deparr/tairiki.nvim',
        name = 'tairiki',
        lazy = false,
        opts = {
            code_style = { comments = 'none' },
            plugins = { all = true },
            colors = function(c, opt)
              c.black = '#121212'
              c.bg0 = '#121212'
              c.comment = '#2f6b31'
            end,
            highlights = function(hl, c, opt) 
                hl.Comment = { fg = '#2f6b31' }
                hl.Normal = { bg = '#121212' }
                hl.NormalNC = { bg = '#121212' }
                hl.SignColumn = { bg = '#121212' }
                hl.EndOfBuffer = { bg = '#121212' }
                hl.CursorLine = { bg = '#111144' }
                hl.Cursor = { bg = '#00ff33', fg = '#303030' }
            end,
              
            
          }
      },
}