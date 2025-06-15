return {
  {
    "WTFox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    opts = { 
        background = { 
          dark = "jellybeans",
          light = "jellybeans_light"
        },
        transparent = false,
        italics = false,
        flat_ui = false,
        plugins = { all = false, auto = true },
        on_highlights = function(hl, colors)
          hl.Cursor = { bg = "#00ff33", fg = "#303030" }
          hl.CursorLine = { bg = "#111144" }
          hl.Constant = { fg = "#cf6a4c" }
          hl.Normal = { bg = "#151515" }
          hl.NormalNC = { bg = "#151515" }
          hl.Pmenu = { bg = "#151515" }
          hl.PmenuNC = { bg = "#151515" }
          hl.EndOfBuffer = { bg = "#151515" }
          hl.SignColumn = { bg = "#151515" }
          hl.SnacksNormal = { bg = "#151515" }
          hl.SnacksNormalNC = { bg = "#151515" }
          hl.SnacksPicker = { bg = "#151515" }
          hl.SnacksExplorer = { bg = "#151515" }
        end,
        -- on_colors = function(c)
        -- local light_bg = '#ffffff'
        -- local dark_bg = "#151515"
        --  if not require'jellybeans'.transparent then
        --   vim.o.background = 'dark'
        --  c.background = vim.o.background == 'light' and light_bg or dark_bg
        -- end
        --	end  
    }
  }
}

