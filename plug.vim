function! Cond(cond, ...)
	let opts = get(a:000, 0, {})
	return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged-remote')
Plug 'https://github.com/JuliaEditorSupport/julia-vim', Cond(!exists('g:vscode'))
Plug 'https://github.com/airblade/vim-gitgutter', Cond(!exists('g:vscode'))
Plug 'https://github.com/aklt/plantuml-syntax', Cond(!exists('g:vscode'))
Plug 'https://github.com/dhruvasagar/vim-table-mode', Cond(!exists('g:vscode'))
Plug 'https://github.com/fatih/vim-go', Cond(!exists('g:vscode'), { 'do': ':GoUpdateBinaries' })
Plug 'https://github.com/glepnir/lspsaga.nvim', Cond(!exists('g:vscode'))
Plug 'https://github.com/glts/vim-textobj-comment'
Plug 'https://github.com/shadmansaleh/lualine.nvim', Cond(!exists('g:vscode'))
Plug 'https://github.com/junegunn/fzf.vim', Cond(!exists('g:vscode'))
Plug 'https://github.com/junegunn/goyo.vim', Cond(!exists('g:vscode'))
Plug 'https://github.com/kana/vim-textobj-indent'
Plug 'https://github.com/kana/vim-textobj-line'
Plug 'https://github.com/kana/vim-textobj-user'
Plug 'https://github.com/lervag/vimtex', Cond(!exists('g:vscode'))
Plug 'https://github.com/machakann/vim-sandwich'
Plug 'https://github.com/neovim/nvim-lspconfig', Cond(!exists('g:vscode'))
Plug 'https://github.com/nvim-lua/completion-nvim', Cond(!exists('g:vscode'))
Plug 'https://github.com/roxma/nvim-yarp', Cond(!exists('g:vscode'))
Plug 'https://github.com/skywind3000/asyncrun.vim'
Plug 'https://github.com/tommcdo/vim-lion'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-fugitive', Cond(!exists('g:vscode'))
Plug 'https://github.com/vim-pandoc/vim-pandoc', Cond(!exists('g:vscode'))
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax', Cond(!exists('g:vscode'))
Plug 'https://github.com/vim-pandoc/vim-rmarkdown', Cond(!exists('g:vscode'))
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'https://github.com/voldikss/vim-floaterm', Cond(!exists('g:vscode'))
Plug 'https://github.com/wakatime/vim-wakatime', Cond(!exists('g:vscode'))
Plug 'https://github.com/wmvanvliet/jupyter-vim', Cond(!exists('g:vscode'))
call plug#end()
