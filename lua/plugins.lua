local status, packer = pcall(require, 'packer')
if (not status) then return end

local nocode = function()
	return vim.fn.exists('g:vscode') == 0
end

local util = require'packer.util'

packer.init({
	package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

packer.startup({
	function()
		local use = use
		use { 'GoldsteinE/compe-latex-symbols', cond = { nocode } }
		use { 'airblade/vim-gitgutter', cond = { nocode } }
		use { 'aklt/plantuml-syntax', cond = { nocode } }
		use { 'dhruvasagar/vim-table-mode', cond = { nocode } }
		use { 'fatih/vim-go', run = ':GoUpdateBinaries', cond = { nocode } }
		use { 'glepnir/lspsaga.nvim', cond = { nocode } }
		use { 'glts/vim-textobj-comment' }
		use { 'hrsh7th/nvim-compe', cond = { nocode } }
		use { 'junegunn/goyo.vim', cond = { nocode } }
		use { 'kana/vim-textobj-indent' }
		use { 'kana/vim-textobj-line' }
		use { 'kana/vim-textobj-user' }
		use { 'lervag/vimtex', cond = { nocode } }
		use { 'machakann/vim-sandwich' }
		use { 'neovim/nvim-lspconfig', cond = { nocode } }
		use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }, cond = { nocode } }
		use { 'nvim-treesitter/nvim-treesitter', branch = '0.5-compat', run = ':TSUpdate' }
		use { 'shadmansaleh/lualine.nvim', cond = { nocode } }
		use { 'skywind3000/asyncrun.vim' }
		use { 'tommcdo/vim-lion' }
		use { 'tpope/vim-commentary' }
		use { 'tpope/vim-fugitive', cond = { nocode } }
		use { 'tpope/vim-sleuth' }
		use { 'vim-pandoc/vim-pandoc', cond = { nocode } }
		use { 'vim-pandoc/vim-pandoc-syntax', cond = { nocode } }
		use { 'vim-pandoc/vim-rmarkdown', cond = { nocode } }
		use { 'vim-scripts/ReplaceWithRegister' }
		use { 'wakatime/vim-wakatime', cond = { nocode } }
		use { 'ray-x/lsp_signature.nvim', cond = { nocode } }
		use { 'kyazdani42/nvim-web-devicons', cond = { nocode } }
	end,
	config = {
		max_jobs = 16,
		git = {
			default_url_format = 'https://hub.fastgit.org/%s'
		}
	}
})
