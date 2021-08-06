if !exists('g:loaded_completion') | finish | endif

set completeopt=noinsert,menuone,noselect
set shortmess+=c
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_smart_case = 1
