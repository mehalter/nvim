if !exists('g:loaded_telescope') | finish | endif

map <leader>ff :Telescope find_files<CR>
map <leader>fb :Telescope buffers<CR>
map <leader>fh :Telescope oldfiles<CR>
map <leader>fg :Telescope live_grep<CR>
map <leader>ft :Telescope lsp_references<CR>
map <leader>fs :Telescope lsp_document_symbols<CR>
map <leader>fr :Telescope registers<CR>
map <leader>fm :Telescope marks<CR>
map <leader>fp :Telescope spell_suggest<CR>
map <leader>fq :Telescope quickfix<CR>
