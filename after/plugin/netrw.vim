if !exists('g:loaded_netrwPlugin') | finish | endif

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex
map <leader>nn :call ToggleNetrw()<CR>
let g:NetrwIsOpen=0
function! ToggleNetrw() abort
		if g:NetrwIsOpen
				let i = bufnr("$")
				while (i >= 1)
						if (getbufvar(i, "&filetype") == "netrw")
								silent exe "bwipeout " . i
						endif
						let i-=1
				endwhile
				let g:NetrwIsOpen=0
		else
				let g:NetrwIsOpen=1
				silent Vexplore
		endif
endfunction
