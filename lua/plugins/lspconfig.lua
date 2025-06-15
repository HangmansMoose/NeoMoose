-- The LazyVim backend should be taking care of the Mason config for me, just based on
-- the servers that I pass through here
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        clangd = {
          opts = {
            cmd = {
              "clangd",
              "--header-insertion=never",
            },
          },
        },
        pyright = {},
        omnisharp = {
          handlers = {
            ["textDocument/definition"] = function(...)
              return require("omnisharp_extended").handler(...)
            end,
          },
          enable_roslyn_analyzers = true,
          organize_imports_on_format = true,
          enable_import_completion = true,
        },
        -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
        --
        -- Some languages (like typescript) have entire language plugins that can be useful:
        --    https://github.com/pmizio/typescript-tools.nvim
        --
        -- But for many setups, the LSP (`ts_ls`) will work just fine
        lua_ls = {
          -- cmd = {...},
          -- filetypes = { ...},
          -- capabilities = {},
          on_init = function(client)
            local cwd = vim.loop.cwd():lower()
            local block_list = {
              os.getenv("USERPROFILE"):lower() .. "\\.config\\nvim",
              os.getenv("USERPROFILE"):lower() .. "\\AppData\\Local\\nvim",
            }
        
            for _, path in ipairs(block_list) do
              if cwd:find(path, 1, true) then
                client.stop()
                return
              end
            end
          end,
          settings = {
            Lua = {
              completion = {
                enable = false,
              },
              codeLens = {
                enable = false,
              },
              hint = {
                enable = false,
              },
              diagnostics = {
                globals = { "vim", "Snacks" },
                disable = { "missing-fields", "trailing-space" },
              },
              -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
              -- diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        "codelldb",
        "stylua"
      }
    }
  },
}
