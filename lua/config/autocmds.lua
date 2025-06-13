-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- This needs a better place, just putting it here for now

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end

    -- Disable word highlighting under the cursor
    if client.server_capabilities.documentHighlightProvider then
      client.server_capabilities.documentHighlightProvider = false
    end
  end,
})

local disabled_project_path = "G:/Code/HHFollow/handmade/code"
-- Clangd doesnt work with unity builds so this disables clangd if I am working on HandmadeHero
-- This could be put in the function above but I wanted clear seperation
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

