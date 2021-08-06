if !exists('g:loaded_floaterm') | finish | endif

let g:floaterm_autoclose = v:true
map <leader>fn :FloatermNew<CR>
map <leader>lg :FloatermNew name=git height=0.75 width=0.9 lazygit<CR>
nnoremap	 <silent>		<F1>	 :FloatermToggle<CR>
tnoremap	 <silent>		<F1>	 <C-\><C-n>:FloatermToggle<CR>
nnoremap	 <silent>		<F2>		:FloatermPrev<CR>
tnoremap	 <silent>		<F2>		<C-\><C-n>:FloatermPrev<CR>
nnoremap	 <silent>		<F3>		:FloatermNext<CR>
tnoremap	 <silent>		<F3>		<C-\><C-n>:FloatermNext<CR>

augroup floaterm
	autocmd Filetype python map <leader>rp :FloatermNew name=repl wintype=normal position=right width=0.5 python<CR>
	autocmd Filetype julia map <leader>rp :FloatermNew name=repl wintype=normal position=right width=0.5 julia<CR>
	autocmd Filetype hy map <leader>rp :FloatermNew name=repl wintype=normal position=right width=0.5 hy<CR>
	autocmd Filetype python,julia,hy vmap <buffer> <silent> <leader>e :FloatermSend! --name=repl<CR>
augroup END
