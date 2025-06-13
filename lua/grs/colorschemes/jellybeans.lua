return {
  {
    "WTFox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    opts = { 
        -- background = "jellybeans",
        transparent = false,
        italics = false,
        flat_ui = true,
        plugins = { all = false, auto = false },
        on_highlights = function(hl, colors)
          hl.Cursor = { bg = "#00ff33", fg = "#303030" }
          hl.CursorLine = { bg = "#111144" }
          hl.Constant = { fg = "#cf6a4c" }
          hl.Normal = { bg = "#181818" }
          hl.NormalNC = { bg = "#181818" }
          hl.EndOfBuffer = { bg = "#181818" }
          hl.SignColumn = { bg = "#181818" }
          hl.SnacksNormal = { bg = "#181818" }
          hl.SnacksNormalNC = { bg = "#181818" }
          hl.SnacksPicker = { bg = "#181818" }
          hl.SnacksExplorer = { bg = "#181818" }
        end,
        -- on_colors = function(c)
        -- local light_bg = '#ffffff'
        -- local dark_bg = "#181818"
        --  if not require'jellybeans'.transparent then
        --   vim.o.background = 'dark'
        --  c.background = vim.o.background == 'light' and light_bg or dark_bg
        -- end
        --	end  
    }
  }
}

