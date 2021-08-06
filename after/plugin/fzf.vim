if !exists('g:loaded_fzf_vim') | finish | endif

command! -bang -nargs=? -complete=dir Files
	\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
map <leader>ff :Files<CR>
map <leader>fm :Marks<CR>
map <leader>fw :Windows<CR>
map <leader>fb :Buffers<CR>
map <leader>fh :History<CR>
map <leader>fg :Tags<CR>
map <leader>ft :BTags<CR>
