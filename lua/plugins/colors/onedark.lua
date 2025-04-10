return {
    {
        'navarasu/onedark.nvim',
        name = 'onedark',
        config = function()
          require('onedark').setup {
            style = 'warmer',
            code_style = {
              comments = 'none',
            },
            colors = {
              bg0 = '#141414',
            },
          }
        end,
      },
}