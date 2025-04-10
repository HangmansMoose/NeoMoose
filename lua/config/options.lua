-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- adds filename to top right of buffer
-- vim.opt.winbar = "%=%m %f"

-- disable auto pairs
-- vim.g.minipairs_disable = true

-- add highlighting to weird files

-- don't show tab indicators
vim.opt.listchars = { tab = "  " }

-- vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.root_spec = { "cwd" }
vim.opt.guicursor = "n-v-c-sm-ve:block,i-ci:ver20,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"

-- make windows opaque
vim.opt.pumblend = 0 -- for cmp menu
vim.opt.winblend = 0 -- for documentation popup

vim.g.snacks_animate = false

-- vim.opt.number = true
-- vim.opt.relativenumber = true

vim.opt.numberwidth = 3
vim.opt.signcolumn = "yes:1"
vim.opt.statuscolumn = "%l%s"

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.guicursor =
  'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true
vim.opt.wrap = false

-- highlight current cursor line
vim.opt.cursorline = true

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true
-- This gets rid of the gutter
vim.opt.statuscolumn = ''

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- vim.opt.guifont = { 'CaskaydiaCove NFM', 'h12' }

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.o.background = 'dark'

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'
--  NOTE:Will probably want to turn these back on when using python

--vim.opt.list = true
--vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
--
vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')

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
-- Neovide specific options
if vim.g.neovide or vim.g.nvy then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scroll_animation_length = 0.15
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_position_animation_length = 0
  vim.o.guifont = 'CaskaydiaMono_Nerd_Font:h13:#e-subpixelantialias'
  vim.g.neovide_transparency = 1
  vim.g.neovide_remember_window_size = true
  -- vim.g.neovide_fullscreen = true
end

-- These three lines here control the border color between the windows/buffers/panels
-- The forground only sets the center line, there are actually two thicker lines either side
-- that are controlled by the background color, but by defaut they take on the same color as the
-- current NORMAL bg color
vim.cmd 'set laststatus=3'
vim.opt.fillchars = 'vert:┃,horiz:━,verthoriz:╋,horizup:┻,horizdown:┳,vertleft:┫,vertright:┣,eob: '
vim.cmd 'hi VertSplit guifg=#252525 ctermfg=GREY'

-- This little bit is for scope.nvim (not snacks scope they are different)

vim.opt.sessionoptions = { 'buffers', 'tabpages', 'globals' }

require 'config.lazy'
require 'config.treesit_conf'
-- vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#141414', ctermbg = 'BLACK' })
vim.cmd 'colorscheme tairiki'
--vim.cmd 'hi Cursor guifg=#303030 guibg=#00ff33' 
--vim.cmd 'hi CursorLine guibg=#111144'
--vim.cmd 'hi Normal guibg=#1c1c1c ctermbg=GREY'
--vim.cmd 'hi NormalNC guibg=#1c1c1c ctermbg=GREY
if vim.g.colors_name == 'naysayer' then
  vim.cmd 'hi Normal guibg=#181818'
  vim.cmd 'hi NormalNC guibg=#181818'
end

-- This needs a better place, just putting it here for now

local disabled_project_path = "G:/Code/HHFollow/handmade/code"

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

local toggle_header_cpp = function()
	local baseFilePath = vim.fn.expand('%:r')
	local currentFileExtension = vim.fn.expand('%:e')
	local switchToFileName

	if currentFileExtension == 'cpp' then
		switchToFileName = baseFilePath .. '.h'  
	elseif currentFileExtension == 'h' then
		switchToFileName = baseFilePath .. '.cpp'  
	else 
		print("Not a C/C++ file.")
		return
	end

	local openFileCmd = 'e ' .. switchToFileName
	
	vim.cmd(openFileCmd)
	
end


vim.keymap.set('n', '<A-h>', toggle_header_cpp, { desc = 'Switch between cpp and header file' })

vim.lsp.set_log_level("error")

vim.diagnostic.config({
  virtual_lines = {
	  current_line = true
  }
})
