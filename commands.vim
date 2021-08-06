""""""""""""""""""""""""""""
" => Commands
""""""""""""""""""""""""""""
" commands to retab document to different tab width
command TTF :set ts=2 sts=2 noet | retab! | set ts=4 sts=4 et | retab
command FTT :set ts=4 sts=4 noet | retab! | set ts=2 sts=2 et | retab

command Print :hardcopy > %:p:r.ps | !ps2pdf %:p:r.ps %:p:r.pdf && rm %:p:r.ps

" toggle colorcolumn
let s:activatedcc=0
function! ToggleColorcolumn()
	if s:activatedcc == 0
		let s:activatedcc=1
		match ColorColumn '\%81v'
	else
		let s:activatedcc=0
		match none
	endif
endfunction
map <leader>cc :call ToggleColorcolumn()<CR>
" toggle colorcolumn
command! ToggleConceal :let &conceallevel = &conceallevel == '2' ? 0 : 2
map <leader>cl :ToggleConceal<CR>

" sudo save with :W
command W w !sudo tee % > /dev/null

" write tags
command! MakeTags AsyncRun ctags -R .

""""""""""""""""""""""""""""
" => Autocommands
""""""""""""""""""""""""""""
" Auto remove whitespace
function! StripWhitespace() abort
	let pos = getcurpos()
	%s/\s\+$//e " EOL
	%s#\($\n\s*\)\+\%$##e " EOF
	cal setpos('.', pos)
endfunction
augroup whitespace
	autocmd BufWritePre * call StripWhitespace()
augroup END

" Setup documentation
augroup pythonapi
	autocmd Filetype python set keywordprg=pydoc
augroup END

augroup mutt
	autocmd BufNewFile,BufFilePre,BufRead /tmp/neomutt* set filetype=markdown
augroup END

augroup groff
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom set filetype=groff
augroup END

" Markdown Settings
augroup markup
	" set tab to 4
	autocmd BufNewFile,BufRead *.md,*.rmd setlocal tabstop=4 shiftwidth=4
	" set word wrap
	autocmd BufNewFile,BufRead *.md,*.rmd setlocal textwidth=80
	" turn on spell check
	autocmd BufNewFile,BufRead *.md,*.rmd setlocal spell spelllang=en_us
	" enable justify package
	autocmd BufNewFile,BufRead *.md,*.rmd packadd justify

	" => Markdown
	autocmd Filetype markdown,rmd inoremap <buffer> ;td - [ ]<Space>
	autocmd Filetype markdown,rmd inoremap <buffer> ;b ****<Space><++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap <buffer> ;s ~~~~<Space><++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap <buffer> ;e **<Space><++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap <buffer> ;i ![](<++>)<Space><++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap <buffer> ;a [](<++>)<Space><++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap <buffer> ;1 #<Space><CR><CR><++><Esc>2kA
	autocmd Filetype markdown,rmd inoremap <buffer> ;2 ##<Space><CR><CR><++><Esc>2kA
	autocmd Filetype markdown,rmd inoremap <buffer> ;3 ###<Space><CR><CR><++><Esc>2kA
	autocmd Filetype markdown,rmd inoremap <buffer> ;4 ####<Space><CR><CR><++><Esc>2kA
	autocmd Filetype markdown,rmd inoremap <buffer> ;5 #####<Space><CR><CR><++><Esc>2kA
	autocmd Filetype markdown,rmd inoremap <buffer> ;6 ######<Space><CR><CR><++><Esc>2kA
	autocmd Filetype markdown,rmd inoremap <buffer> ;l ---<CR>
	autocmd Filetype markdown inoremap <buffer> ;c ```<CR><++><CR>```<CR><CR><++><Esc>4kA
	autocmd Filetype rmd inoremap <buffer> ;c ```{, eval = FALSE}<CR><++><CR>```<CR><CR><++><Esc>4k^f,i
augroup END
