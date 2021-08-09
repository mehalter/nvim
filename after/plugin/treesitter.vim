if !exists('g:loaded_nvim_treesitter') | finish | endif

lua << EOF
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = false,
		disable = {},
	},
	ensure_installed = {
		"bash",
		"bibtex",
		"c",
		"cmake",
		"comment",
		"cpp",
		"css",
		"dockerfile",
		"go",
		"haskell",
		"html",
		"javascript",
		"json",
		"julia",
		"latex",
		"lua",
		"python",
		"r",
		"regex",
		"toml",
		"tsx",
		"typescript",
		"yaml",
	}
}
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
