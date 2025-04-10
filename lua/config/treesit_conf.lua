require 'nvim-treesitter.install'.compilers = { "cl", "clang", "gcc" }

require("nvim-treesitter.configs").setup {
	ensure_installed =  { "python", "lua", "ocaml", "yaml", "toml", "json", 'c', 'cpp', 'c_sharp', 'markdown'},
  	auto_install = true,
	sync_install=false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},

	indent = {
		disable = true,
	},

	rainbow = {
		disable = false,
		extended_mode = true
	},
	context_commentstring = {
		enable = true
	}
}
