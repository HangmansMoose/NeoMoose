return {
	{
    	'NTBBloodbath/doom-one.nvim',
    	name = 'doom-one',
		lazy = false,
		priority = 1000,
		setup = function()
			vim.g.doom_one_transparent_background = true
			vim.g.doom_one_enable_treesitter = true
		end,
		--config = function()
		--vim.cmd'colorscheme doom-one'
		--if vim.g.neovide then
		--	vim.cmd 'hi Normal guibg=#181818'
		--	vim.cmd 'hi NormalNC guibg=#181818'
		--else
		--	vim.cmd'hi SignColumn guibg=NONE ctermbg=NONE'
		--	vim.cmd'hi Pmenu guibg=NONE ctermbg=NONE'
		--	vim.cmd'hi PmenuSbar guibg=NONE ctermbg=NONE'
		--end
		--set_hl("Normal", {bg = '#181818'})
		--set_hl("EndofBuffer", {bg = '#181818'})
		--set_hl("LineNr", {bg = '#181818'})
		--set_hl("NormalFloat", {bg = '#181818'})
		--set_hl("NormalPopup", {bg = '#181818'})
		--set_hl("Normal", {bg = '#181818'})
		--set_hl("Normal", {bg = '#181818'})
		--end
	}
}