local Utils = require("utils")
-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local auto = vim.api.nvim_create_autocmd

-- Set relative line numbers in normal mode
local ignored_filetypes = {
  "copilot-chat",
  "snacks_dashboard",
  "snacks_picker_list",
}
auto({ "InsertEnter" }, {
  pattern = "*",
  callback = function()
    if not Utils.contains(ignored_filetypes, vim.bo.filetype) then
      vim.opt.relativenumber = false
    end
  end,
})

-- and absolute line numbers in insert mode
auto({ "InsertLeave" }, {
  pattern = "*",
  callback = function()
    if not Utils.contains(ignored_filetypes, vim.bo.filetype) then
      vim.opt.relativenumber = true
    end
  end,
})

-- disable auto pairs in Rust
auto({ "FileType" }, {
  pattern = "rust",
  command = "let g:minipairs_disable = v:true",
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "clangd" then
      local current_file = vim.api.nvim_buf_get_name(args.buf)
      if current_file:find(disabled_project_path, 1, true) then
        vim.schedule(function()
          client.stop()
        end)
      end
    end
  end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})