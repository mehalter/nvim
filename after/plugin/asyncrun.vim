if !exists('g:asyncrun_support') | finish | endif

map <leader>qf :call asyncrun#quickfix_toggle(8)<CR>
