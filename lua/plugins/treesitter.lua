-- Without this treesitter fails to compile parsers
require("nvim-treesitter.install").compilers = { "clang", "cl", "C:/tools/w64devkit/bin/gcc.exe" }

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  opts = {
    compilers = { "cl", "clang", "gcc" },
    ensure_installed = {
      "python",
      "lua",
      "yaml",
      "toml",
      "json",
      "javascript",
      "c",
      "cpp",
      "c_sharp",
      "rust",
      "zig",
      "markdown",
    },
    auto_install = true,
    sync_install = false,

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    indent = {
      disable = true,
    },

    rainbow = {
      disable = false,
      extended_mode = true,
    },
    context_commentstring = {
      enable = true,
    },
  },
}
