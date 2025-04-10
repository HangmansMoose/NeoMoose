-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- don't show tab indicators
vim.opt.listchars = { tab = "  " }

-- vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.root_spec = { "cwd" }
vim.opt.guicursor = "n-v-c-sm-ve:block,i-ci:ver20,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"

-- make windows opaque
vim.opt.pumblend = 0 -- for cmp menu
vim.opt.winblend = 0 -- for documentation popup

vim.g.snacks_animate = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.numberwidth = 3

vim.g.have_nerd_font = true
vim.opt.wrap = false

-- highlight current cursor line
vim.opt.cursorline = true

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.opt.statuscolumn = ''


-- vim.opt.guifont = { 'CaskaydiaCove NF', 'h14' }

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

-- Decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.o.background = 'dark'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.opt.termguicolors = true


-- These three lines here control the border color between the windows/buffers/panels
-- The forground only sets the center line, there are actually two thicker lines either side
-- that are controlled by the background color, but by defaut they take on the same color as the
-- current NORMAL bg color
vim.cmd 'set laststatus=3'
vim.opt.fillchars = 'vert:┃,horiz:━,verthoriz:╋,horizup:┻,horizdown:┳,vertleft:┫,vertright:┣,eob: '
vim.cmd 'hi VertSplit guifg=#252525 ctermfg=GREY'

vim.diagnostic.config({
  virtual_lines = {
	  current_line = true
  }
})
