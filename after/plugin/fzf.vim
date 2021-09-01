if !exists('g:loaded_fzf_lua') | finish | endif

map <leader>ff :FzfLua files<CR>
map <leader>fb :FzfLua buffers<CR>
map <leader>fh :FzfLua oldfiles<CR>
map <leader>fg :FzfLua live_grep<CR>
map <leader>ft :FzfLua lsp_references<CR>
map <leader>fs :FzfLua lsp_document_symbols<CR>
map <leader>fr :FzfLua registers<CR>
map <leader>fm :FzfLua marks<CR>
map <leader>fp :FzfLua spell_suggest<CR>
map <leader>fq :FzfLua quickfix<CR>
