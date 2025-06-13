return {
    'navarasu/onedark.nvim',
    name = 'onedark',
    config = function()
      require('onedark').setup {
        style = 'darker',
        code_style = {
          comments = 'none',
        },
        --highlights = {
        --  Normal =					{ bg="#222222" },
        --  NormalNC =				{ bg="#222222" },
        --  SnacksPicker =		{ bg="#222222" },
        --  SnacksExplorer =	{ bg="#222222" },
        --  EndOfBuffer =			{ bg="#222222" },
        --  SignColumn =			{ bg="#222222" },
        --  FloatBorder =			{ bg="#222222" },
        --  CursorLine =			{ bg="#111144" },
				--	Cursor =					{ bg = "#00ff33", fg = "#303030" }
				--	
        --},
      }
    end,
}