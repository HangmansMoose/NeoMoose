return {
  {
    "HangmansMoose/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('night-owl').setup {
        italics = false,
        bold = false,
        underline = false,
      }
    end,
  }
}       	
