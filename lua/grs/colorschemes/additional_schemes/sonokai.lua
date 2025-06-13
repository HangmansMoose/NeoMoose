return {
    'sainnhe/sonokai',
    config = function()
      --vim.g.sonokai_style = 'Default'
      vim.g.sonokai_better_performance = 1
      vim.g.sonokai_enable_italic = false
      vim.g.sonokai_disable_italic_comment = true
      vim.g.sonokai_colors_override = {
        bg0 = { '#181818', '232' },
        bg_dim = { '#181818', '232' },
      }
    end
}