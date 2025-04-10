return {
    {
        'cpea2506/one_monokai.nvim',
        name = 'one_monokai',
        lazy = false,
        priority = 1000,
        config = function()
          require('one_monokai').setup {
            italics = false,
            colors = { bg = '#1b1b1b' },
            groups = {
              defaults = {
                Cursor = { bg = '#00ff33', fg = '#303030' },
              },
            },
          }
        end,
    } 
}