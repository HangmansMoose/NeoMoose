-- The LazyVim backend should be taking care of the Mason config for me, just based on
-- the servers that I pass through here
return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      codelldb = {},
      clangd = {
        opts = {
          cmd = {
            "clangd",
            "--header-insertion=never",
          },
        },
      },
      pyright = {},
      -- Disabling rust-analyzer here as the rustaceanvim plugin does this for us and 
      -- re-calling it via lspconfig can cause issues 
      --rust_analyzer = {
      --  opts = {
      --    completion = {
      --      crates = {
      --        enabled = true,
      --      },
      --    },
      --    lsp = {
      --      enabled = true,
      --      actions = true,
      --      completion = true,
      --      hover = true,
      --    },
      --  }
      --},
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
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace",
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
}
