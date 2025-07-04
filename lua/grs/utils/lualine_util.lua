-- Util: Lualine components
-- https://github.com/rafi/vim-config

---@class utils.lualine_utils
local M = {}

local plugin_icons = {
	DiffviewFiles = { ' ' },
	fugitive = { ' ' },
	fugitiveblame = { '󰊢', 'Blame' },
	lazy = { '󰒲 ', 'Lazy.nvim' },
	loclist = { '󰂖', 'Location List' },
	mason = { '󰈏 ', 'Mason' },
	NeogitStatus = { '󰉺' },
	['neo-tree'] = { ' ', '%{%v:lua.neotree_get_path()%}' },
	['neo-tree-popup'] = { '󰋱', '%{%v:lua.neotree_get_path()%}' },
	Outline = { ' ' },
	quickfix = { ' ', 'Quickfix List' }, -- 󰎟 
	['grug-far'] = { '󰥩 ', 'Grug FAR' },
	spectre_panel = { '󰥩 ', 'Spectre' },
	TelescopePrompt = { '󰋱', 'Telescope' },
	terminal = { ' ' },
	toggleterm = { ' ', 'Terminal' },
	trouble = { '' }, --  
	undotree = { '󰃢' },
}

local cache_keys = {
	'statusline_cache_trails',
}

-- Clear cached values that relate to buffer filename.
vim.api.nvim_create_autocmd(
	{ 'BufReadPost', 'BufFilePost', 'BufNewFile', 'BufWritePost' },
	{
		group = vim.api.nvim_create_augroup('glen.statusline', {}),
		callback = function()
			if vim.bo.buftype ~= '' then
				return
			end
			for _, cache_key in ipairs(cache_keys) do
				pcall(vim.api.nvim_buf_del_var, 0, cache_key)
			end
		end,
	}
)

---@return function
function M.plugin_title()
	return function()
		-- Normalize bufname
		local bufname = vim.api.nvim_buf_get_name(0)
		if bufname:len() < 1 and vim.bo.buftype:len() < 1 then
			return 'N/A'
		end

		local msg = ''
		local ft = vim.bo.filetype
		local plugin_type = ft == 'qf' and vim.fn.win_gettype() or ft
		if plugin_icons[plugin_type] ~= nil then
			for _, part in ipairs(plugin_icons[plugin_type]) do
				msg = msg .. ' ' .. part
			end
		end
		if #plugin_icons[plugin_type] < 2 then
			msg = msg .. bufname:gsub('%%', '%%%%')
		end
		return msg
	end
end

---@param opts? {separator: string}
---@return function
function M.filemedia(opts)
	opts = vim.tbl_extend('force', {
		separator = '  ',
	}, opts or {})
	return function()
		local parts = {}
		if vim.bo.fileformat ~= '' and vim.bo.fileformat ~= 'unix' then
			table.insert(parts, vim.bo.fileformat)
		end
		if vim.bo.fileencoding ~= '' and vim.bo.fileencoding ~= 'utf-8' then
			table.insert(parts, vim.bo.fileencoding)
		end
		if vim.bo.filetype ~= '' then
			table.insert(parts, vim.bo.filetype)
		end
		return table.concat(parts, opts.separator)
	end
end

-- Detect trailing whitespace and cache result per buffer
---@param opts? {icon: string}
---@return function
function M.trails(opts)
	opts = vim.tbl_extend('force', {
		icon = '␣',
	}, opts or {})
	return function()
		local cache_key = 'statusline_cache_trails'
		local cache_ok, cache = pcall(vim.api.nvim_buf_get_var, 0, cache_key)
		if cache_ok then
			return cache
		end

		local msg = ''
		if
			not vim.bo.readonly
			and vim.bo.modifiable
			and vim.fn.line('$') < 9000
		then
			local trailing = vim.fn.search('\\s$', 'nw')
			if trailing > 0 then
				msg = msg .. opts.symbol .. trailing
			end
		end
		vim.api.nvim_buf_set_var(0, cache_key, msg)
		return msg
	end
end

_G.neotree_get_path = function(winid)
	winid = winid or vim.api.nvim_get_current_win()
	local state =
		require('neo-tree.sources.manager').get_state('filesystem', nil, winid)
	if not state.path then
		local bufnr = vim.api.nvim_win_get_buf(winid)
		if vim.bo[bufnr].filetype == 'neo-tree' then
			state = require('neo-tree.sources.manager').get_state('filesystem')
		end
	end
	return state.path and vim.fn.fnamemodify(state.path, ':~') or ''
end

return M	
	