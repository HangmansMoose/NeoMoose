return {
    'WTFox/jellybeans.nvim',
    lazy = false,
    priotiy = 1000,
    opts = {
      style = "dark",
      italics = false,
      flat_ui = true,
      plugins = { all = true },
  
      on_highlights = function(hl, colors)
        hl.Cursor = { bg = "#00ff33", fg = "#303030" }
        hl.CursorLine = { bg = "#111144" }
        hl.Comment = { fg = "#2f6b31" }
      end,
  
      on_colors = function(c)
        local light_bg = '#ffffff'
        local dark_bg = "#121212"
        vim.o.background = 'dark'
        c.background = vim.o.background == 'light' and light_bg or dark_bg
      end,
    },
    
}
