return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    image = { enabled = false },
    animate = { enabled = false },
    terminal = {
      enabled = true,
      shell = "pwsh -NoLogo",
    },
    --bigfile = { enabled = false },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = false },
    notifier = { enabled = true },
    --quickfile = { enabled = false },
    scope = { enabled = false },
    --scratch = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    input = {
    -- use noice instead
     enabled = false,
    }
  },
}

