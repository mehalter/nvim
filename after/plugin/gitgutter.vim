if !exists('g:loaded_gitgutter') | finish | endif

let g:gitgutter_enabled = 0
map <leader>d :GitGutterToggle<CR>
