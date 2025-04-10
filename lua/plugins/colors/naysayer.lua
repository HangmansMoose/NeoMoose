return {

    'alljokecake/naysayer-theme.nvim',
    name = 'naysayer',
    config = function()
      require('naysayer').setup {
        variant = 'main',
        dark_variant = 'main',
        disable_background = true,
        disable_italics = true,
        -- highlight_groups = {
        --  bg = '#161616',
        -- },
      }
    end,
}