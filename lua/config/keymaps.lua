
vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
vim.keymap.set('n', '<space>tt', '<cmd>Floaterminal<CR>')
--  vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file [E]xplorer tree' }),
vim.keymap.set('n', '<leader>o', '<cmd>Oil --float .<CR>', { desc = 'Open parent directory' })
-- vim.keymap.set('n', '<leader>bb', Build, { desc = 'execute build.bat' })
-- vim.keymap.set("n", "<space>bp", "<cmd>BufferLinePick<CR>", { desc = "pick a buffer",})
vim.keymap.set("i", "<C-a>", "<Esc>")

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
