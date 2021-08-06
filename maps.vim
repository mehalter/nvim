map 0 ^
map <leader>pp :setlocal paste!<CR>

"" bibliography generation
map <leader>gb :read !getbib -c<CR>

"" Defining guides
inoremap ,, <esc>/<++><CR>"_c4l
vnoremap <leader><leader> <esc>/<++><CR>"_c4l
map <leader><leader> <esc>/<++><CR>"_c4l
inoremap ;mk <++>

" date and time shortcuts
iabbrev xdate <C-r>=strftime("%m/%d/%y")<CR>
iabbrev fdate <C-r>=strftime("%B %d, %Y")<CR>
iabbrev xtime <C-r>=strftime("%H:%M")<CR>
iabbrev ftime <C-r>=strftime("%H:%M:%S")<CR>
iabbrev dts		<C-r>=strftime("%Y/%m/%d %H:%M:%S -")<CR>

" tab goes to last buffer
map <TAB> <C-^>

" control-space for autocomplete
inoremap <C-Space> <C-n>

" insert tab with Shift-Tab
inoremap <S-Tab> <C-V><Tab>

" auto closing tags
" inoremap </ </<C-x><C-o><C-n><CR>

" disable highlight
map <silent> <CR> :set hlsearch!<CR>

" remap escape
inoremap jf <esc>
inoremap fj <esc>

" spell check
map <leader>ss :setlocal spell! spelllang=en_us<CR>

" better incrementing/decrementing
noremap + <C-a>
noremap - <C-x>
xnoremap + g<C-a>
xnoremap - g<C-x>

" better pane navigation
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" tab management
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>t<leader> :tabnext<CR>
" go to last tab
let g:lasttab = 1
nmap <leader>tl :exe "tabn ".g:lasttab<CR>
augroup tabs
	autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

" use arrow keys to resize
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>

" terminal remaps
tnoremap <leader><ESC> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
augroup term
	autocmd BufEnter,WinEnter term://* startinsert
	autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
map <leader>sh :belowright split<CR>:resize 10<CR>:terminal<CR>i

" move split to new tab and close tab binding
nmap to :tab sp<CR>

map <leader>mm :w<CR>:AsyncRun compiler %:p<CR><CR>
map <leader>ma :AsyncRun autocomp %:p<CR><CR>

nnoremap <buffer> <leader>mv :!opout <c-r>%<CR><CR>

" make sure auto compiler stops when vim exits
augroup autocomp
	autocmd VimLeave * !autocomp %:p stop
augroup END

augroup graphviz
	autocmd BufNewFile,BufRead *.gv,*.dot inoremap ;ep &epsilon;
augroup END

augroup markup
	autocmd Filetype markdown nnoremap <buffer> <leader>mb :w<CR>:AsyncRun pandoc % --pdf-engine=xelatex --variable urlcolor=blue -t beamer -o %:r.pdf<CR><CR>
	autocmd Filetype tex,markdown,rmd,groff nnoremap <buffer> <leader>mp :![[ -e %:r.pdf ]] && pdfpc %:r.pdf<CR><CR>
	" clear tex compilation files on exit
	autocmd VimLeave *.tex !texclear %
augroup END
