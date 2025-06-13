return {
  "Mofiqul/adwaita.nvim",
  lazy = false,
  config = function()
    vim.g.adwaita_darker = false
    vim.g.adwaita_transparent = false
    vim.cmd("hi CursorLine guibg=#111144")
    vim.cmd("hi Cursor guibg=#00ff33 guifg=#303030")
  end,
}
