if !exists('g:pandoc#loaded') | finish | endif

augroup pandoc
	autocmd! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
