""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""
"set updatetime=300
set scrolloff=7
set fileformats=unix,dos,mac
set path+=**
set spellfile=$XDG_CONFIG_HOME/nvim/spell/en.utf-8.add
set thesaurus+=$XDG_CONFIG_HOME/nvim/spell/mthesaur.txt
" set listchars
set list
set listchars=tab:→\ ,trail:·,extends:›,precedes:‹,nbsp:␣
" set printoptions
set printoptions=number:y,duplex:off,paper:letter
" language
let $LANG='en'
set langmenu=en
" no backups
set nobackup
set nowritebackup
set noswapfile
" linebreak at 500 characters
set linebreak
set textwidth=80
set wrap
" go to last position on open
augroup startup
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END
" persistent undo
try
	set undodir=$XDG_CACHE_HOME/undodir
	set undofile
catch
endtry

" disable indent on latex files
augroup markup
	autocmd FileType tex setlocal indentexpr=
	autocmd FileType rmd setlocal indentexpr=
augroup END

" Treat Markdeep .md.html files as markdown
augroup markdeep
	autocmd BufNewFile,BufRead *.md.html setlocal filetype=markdown
augroup END

augroup hy
	autocmd BufNewFile,BufRead *.hy setlocal filetype=hy
augroup END

augroup julia
	autocmd BufNewFile,BufRead *.jl setlocal filetype=julia
augroup END

" define global python
let g:python_host_prog="/usr/bin/python2"
let g:python3_host_prog="/usr/bin/python"
let g:ruby_host_prog="/usr/bin/ruby"

" define leader key
let mapleader = " "
let g:mapleader = " "

""""""""""""""""""""""""""""
" => VIM Interface
""""""""""""""""""""""""""""
set ruler
set number
set relativenumber
set showbreak=..
set fillchars+=vert:│
set hidden
set lazyredraw
set showmatch
set matchtime=2
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set foldcolumn=2
set conceallevel=1
set wildignore=*.o,*~,*.pyc,*/.gi/*,*/.hg/*,*/.cvn/*,*/.DS_Store
" backspace functionality
set whichwrap+=<,>,h,l
" search
set ignorecase
set smartcase
set inccommand=split
" no sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set timeoutlen=500
" Colorscheme
set t_Co=256
let base16colorspace=256
colorscheme micah

" Status line
set noshowmode

""""""""""""""""""""""""""""
" => Plug
""""""""""""""""""""""""""""
if has("nvim")
	lua require('plugins')
endif

""""""""""""""""""""""""""""
" => Remaps
""""""""""""""""""""""""""""
runtime ./maps.vim

""""""""""""""""""""""""""""
" => Commands
""""""""""""""""""""""""""""
runtime ./commands.vim
