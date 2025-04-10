--vim.o.shell = 'pwsh -NoLogo -NoExit -File C:/tools/vcvars_powershell.ps1'

return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = false },
      dashboard = { enabled = true },
      explorer = { enabled = true },
      indent = { enabled = false },
      input = { enabled = false },
      notifier = { enabled = true },
      quickfile = { enabled = false },
      scope = { enabled = true },
      scratch = { enabled = true },
      scroll = { enabled = false },
      statuscolumn = { enabled = false },
      words = { enabled = false },
      -- Change dashboard color
      picker = { 
		  enabled = true, 
		  sources = {
			  explorer = {
				  layout = {
					  layout = {
						  width = 25,
					  }
				  }
			  }
		  }
	  },
      terminal = { 
		  enabled = true,
		  shell = 'pwsh -NoLogo -NoExit -File C:/tools/vcvars_powershell.ps1',
	  },
    },

    keys = {
      -- Top Pickers & Explorer
      {
        '<leader>m',
        function()
          Snacks.terminal.open('./build.bat')
        end,
        desc = 'Smart Find Files',
      },
	  {
        '<leader><space>',
        function()
          Snacks.picker.smart()
        end,
        desc = 'Smart Find Files',
      },
      {
        '<leader>,',
        function()
          Snacks.picker.buffers()
        end,
        desc = 'Buffers',
      },
      {
        '<leader>/',
        function()
          Snacks.picker.grep()
        end,
        desc = 'Grep',
      },
      {
        '<leader>:',
        function()
          Snacks.picker.command_history()
        end,
        desc = 'Command History',
      },
      {
        '<leader>n',
        function()
          Snacks.picker.notifications()
        end,
        desc = 'Notification History',
      },
      {
        '<leader>e',
        function()
          Snacks.explorer()
        end,
        desc = 'File Explorer',
      },
      -- find
      {
        '<leader>fb',
        function()
          Snacks.picker.buffers()
        end,
        desc = 'Buffers',
      },
      {
        '<leader>fc',
        function()
          Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
        end,
        desc = 'Find Config File',
      },
      {
        '<leader>ff',
        function()
          Snacks.picker.files()
        end,
        desc = 'Find Files',
      },
      {
        '<leader>fp',
        function()
          Snacks.picker.projects()
        end,
        desc = 'Projects',
      },
      {
        '<leader>fr',
        function()
          Snacks.picker.recent()
        end,
        desc = 'Recent',
      },
      -- Grep
      {
        '<leader>sb',
        function()
          Snacks.picker.lines()
        end,
        desc = 'Buffer Lines',
      },
      {
        '<leader>sB',
        function()
          Snacks.picker.grep_buffers()
        end,
        desc = 'Grep Open Buffers',
      },
      {
        '<leader>sg',
        function()
          Snacks.picker.grep()
        end,
        desc = 'Grep',
      },
      {
        '<leader>sw',
        function()
          Snacks.picker.grep_word()
        end,
        desc = 'Visual selection or word',
        mode = { 'n', 'x' },
      },
      -- search
      {
        '<leader>s"',
        function()
          Snacks.picker.registers()
        end,
        desc = 'Registers',
      },
      {
        '<leader>s/',
        function()
          Snacks.picker.search_history()
        end,
        desc = 'Search History',
      },
      {
        '<leader>sa',
        function()
          Snacks.picker.autocmds()
        end,
        desc = 'Autocmds',
      },
      {
        '<leader>sb',
        function()
          Snacks.picker.lines()
        end,
        desc = 'Buffer Lines',
      },
      {
        '<leader>sc',
        function()
          Snacks.picker.command_history()
        end,
        desc = 'Command History',
      },
      {
        '<leader>sC',
        function()
          Snacks.picker.commands()
        end,
        desc = 'Commands',
      },
      {
        '<leader>sd',
        function()
          Snacks.picker.diagnostics()
        end,
        desc = 'Diagnostics',
      },
      {
        '<leader>sD',
        function()
          Snacks.picker.diagnostics_buffer()
        end,
        desc = 'Buffer Diagnostics',
      },
      {
        '<leader>sh',
        function()
          Snacks.picker.help()
        end,
        desc = 'Help Pages',
      },
      {
        '<leader>sH',
        function()
          Snacks.picker.highlights()
        end,
        desc = 'Highlights',
      },
      {
        '<leader>si',
        function()
          Snacks.picker.icons()
        end,
        desc = 'Icons',
      },
      {
        '<leader>sj',
        function()
          Snacks.picker.jumps()
        end,
        desc = 'Jumps',
      },
      {
        '<leader>sk',
        function()
          Snacks.picker.keymaps()
        end,
        desc = 'Keymaps',
      },
      {
        '<leader>sl',
        function()
          Snacks.picker.loclist()
        end,
        desc = 'Location List',
      },
      {
        '<leader>sm',
        function()
          Snacks.picker.marks()
        end,
        desc = 'Marks',
      },
      {
        '<leader>sM',
        function()
          Snacks.picker.man()
        end,
        desc = 'Man Pages',
      },
      {
        '<leader>sp',
        function()
          Snacks.picker.lazy()
        end,
        desc = 'Search for Plugin Spec',
      },
      {
        '<leader>sq',
        function()
          Snacks.picker.qflist()
        end,
        desc = 'Quickfix List',
      },
      {
        '<leader>sR',
        function()
          Snacks.picker.resume()
        end,
        desc = 'Resume',
      },
      {
        '<leader>su',
        function()
          Snacks.picker.undo()
        end,
        desc = 'Undo History',
      },
      {
        '<leader>uC',
        function()
          Snacks.picker.colorschemes()
        end,
        desc = 'Colorschemes',
      },
    },
    --init = function()
    --  vim.api.nvim_create_autocmd('User', {
    --    pattern = 'VeryLazy',
    --    callback = function()
    --      -- Setup some globals for debugging (lazy-loaded)
    --      _G.dd = function(...)
    --        Snacks.debug.inspect(...)
    --      end
    --      _G.bt = function()
    --        Snacks.debug.backtrace()
    --      end
    --      vim.print = _G.dd -- Override print to use snacks for `:=` command

    --      -- Create some toggle mappings
    --      Snacks.toggle.option('spell', { name = 'Spelling' }):map '<leader>us'
    --      Snacks.toggle.option('wrap', { name = 'Wrap' }):map '<leader>uw'
    --      Snacks.toggle.option('relativenumber', { name = 'Relative Number' }):map '<leader>uL'
    --      Snacks.toggle.diagnostics():map '<leader>ud'
    --      Snacks.toggle.line_number():map '<leader>ul'
    --      Snacks.toggle.option('conceallevel', { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map '<leader>uc'
    --      Snacks.toggle.treesitter():map '<leader>uT'
    --      Snacks.toggle.option('background', { off = 'light', on = 'dark', name = 'Dark Background' }):map '<leader>ub'
    --      Snacks.toggle.inlay_hints():map '<leader>uh'
    --      Snacks.toggle.indent():map '<leader>ug'
    --      Snacks.toggle.dim():map '<leader>uD'
    --    end,
    --  })
    --end,
  },
}

--return {
--  {
--
--    -- NOTE: Plugins can specify dependencies.
--    --
--    -- The dependencies are proper plugin specifications as well - anything
--    -- you do for a plugin at the top level, you can do for a dependency.
--    --
--    -- Use the `dependencies` key to specify the dependencies of a particular plugin
--
--    { -- Fuzzy Finder (files, lsp, etc)
--      'nvim-telescope/telescope.nvim',
--      event = 'VimEnter',
--      dependencies = {
--        'nvim-lua/plenary.nvim',
--        { -- If encountering errors, see telescope-fzf-native README for installation instructions
--          'nvim-telescope/telescope-fzf-native.nvim',
--
--          -- `build` is used to run some command when the plugin is installed/updated.
--          -- This is only run then, not every time Neovim starts up.
--          build = 'make',
--
--          -- `cond` is a condition used to determine whether this plugin should be
--          -- installed and loaded.
--          cond = function()
--            return vim.fn.executable 'make' == 1
--          end,
--        },
--        { 'nvim-telescope/telescope-ui-select.nvim' },
--
--        -- Useful for getting pretty icons, but requires a Nerd Font.
--        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
--      },
--      config = function()
--        -- Telescope is a fuzzy finder that comes with a lot of different things that
--        -- it can fuzzy find! It's more than just a "file finder", it can search
--        -- many different aspects of Neovim, your workspace, LSP, and more!
--        --
--        -- The easiest way to use Telescope, is to start by doing something like:
--        --  :Telescope help_tags
--        --
--        -- After running this command, a window will open up and you're able to
--        -- type in the prompt window. You'll see a list of `help_tags` options and
--        -- a corresponding preview of the help.
--        --
--        -- Two important keymaps to use while in Telescope are:
--        --  - Insert mode: <c-/>
--        --  - Normal mode: ?
--        --
--        -- This opens a window that shows you all of the keymaps for the current
--        -- Telescope picker. This is really useful to discover what Telescope can
--        -- do as well as how to actually do it!
--
--        -- [[ Configure Telescope ]]
--        -- See `:help telescope` and `:help telescope.setup()`
--        require('telescope').setup {
--          -- You can put your default mappings / updates / etc. in here
--          --  All the info you're looking for is in `:help telescope.setup()`
--          --
--          -- defaults = {
--          --   mappings = {
--          --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
--          --   },
--          -- },
--          -- pickers = {}
--          extensions = {
--            ['ui-select'] = {
--              require('telescope.themes').get_dropdown(),
--            },
--          },
--        }
--
--        -- Enable Telescope extensions if they are installed
--        pcall(require('telescope').load_extension, 'fzf')
--        pcall(require('telescope').load_extension, 'ui-select')
--
--        -- See `:help telescope.builtin`
--        local builtin = require 'telescope.builtin'
--        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
--        vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
--        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
--        vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
--        vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
--        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
--        vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
--        vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
--        vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
--        vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
--
--        vim.keymap.set('n', '<leader>sc', function()
--          builtin.find_files {
--            cwd = vim.fn.stdpath 'config',
--          }
--        end, { desc = '[S]earch [C]onfig Files' })
--
--        -- Slightly advanced example of overriding default behavior and theme
--        vim.keymap.set('n', '<leader>/', function()
--          -- You can pass additional configuration to Telescope to change the theme, layout, etc.
--          builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--            winblend = 10,
--            previewer = false,
--          })
--        end, { desc = '[/] Fuzzily search in current buffer' })
--
--        -- It's also possible to pass additional configuration options.
--        --  See `:help telescope.builtin.live_grep()` for information about particular keys
--        vim.keymap.set('n', '<leader>s/', function()
--          builtin.live_grep {
--            grep_open_files = true,
--            prompt_title = 'Live Grep in Open Files',
--          }
--        end, { desc = '[S]earch [/] in Open Files' })
--
--        -- Shortcut for searching your Neovim configuration files
--        vim.keymap.set('n', '<leader>sn', function()
--          builtin.find_files { cwd = vim.fn.stdpath 'config' }
--        end, { desc = '[S]earch [N]eovim files' })
--      end,
--    },
--  },
--}
