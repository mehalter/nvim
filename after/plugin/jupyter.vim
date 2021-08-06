if !exists('g:loaded_jupyter_vim') | finish | endif

augroup jupyter
	autocmd Filetype python,julia inoremap ;mk # +<CR><BS><BS><CR><CR># -<esc>2ko
	autocmd Filetype python,julia nnoremap <buffer> <silent> <leader>sb ?#\ +<CR>V/#\ -<CR>
	autocmd Filetype python,julia nnoremap <buffer> <silent> <leader>cn :JupyterConnect<CR>
	autocmd Filetype python,julia vmap <buffer> <silent> <leader><CR> <Plug>JupyterRunVisual
augroup END
