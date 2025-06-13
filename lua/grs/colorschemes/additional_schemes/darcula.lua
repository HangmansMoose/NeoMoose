return {
    'xiantang/darcula-dark.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
    },
	lazy = false,
	priority = 1000,
	config = function()
	    if not vim.g.neovide then
		-- force tranparency
	        vim.cmd'hi Normal guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi NormalNC guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi Terminal guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi SignColumn guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi TelescopeBorder guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi TelescopePromptNormal guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi TelescopePreviewNormal guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi TelescopeResultsNormal guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi DiagnosticVirtualTextOk guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi DiagnosticVirtualTextHint guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi DiagnosticVirtualTextInfo guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi DiagnosticVirtualTextWarn guibg=NONE ctermbg=NONE'
  	        vim.cmd'hi DiagnosticVirtualTextError guibg=NONE ctermbg=NONE'
	    end
	end
}
