return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    config = function()
      vim.g.moonflyItalics = false
      if not vim.g.neovide then
        vim.g.moonflyTransparent = true
      end
    end,
  }
}

