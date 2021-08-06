""""""""""""""""""""""""""""
" => VIM Colors
""""""""""""""""""""""""""""

highlight clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "micah"

highlight Normal                 ctermfg=15     ctermbg=0
highlight User1                  cterm=none     ctermbg=6    ctermfg=15
highlight User2                  cterm=none     ctermbg=8    ctermfg=15
highlight Title                  cterm=none     ctermbg=none ctermfg=DarkGrey
highlight TabLineFill            cterm=none     ctermbg=8    ctermfg=15
highlight TabLine                cterm=none     ctermbg=8    ctermfg=15
highlight TabLineSel             cterm=none     ctermbg=14   ctermfg=0
highlight StatusLine             cterm=none     ctermbg=14   ctermfg=0
highlight StatusLineNC           cterm=none     ctermbg=8    ctermfg=15
highlight StatusLineTerm         cterm=none     ctermfg=12   ctermfg=0
highlight StatusLineTermNC       cterm=none     ctermbg=8    ctermfg=15
highlight CursorLine             ctermbg=0      cterm=none
highlight Visual                 ctermbg=14     ctermfg=0    cterm=none
highlight LineNr                 ctermfg=7      ctermbg=0
highlight VertSplit              ctermfg=0      ctermbg=8    cterm=none
highlight Specialkey             ctermfg=13     ctermbg=0
highlight ErrorMsg               ctermfg=0      ctermbg=9
highlight Pmenu                  ctermbg=8      ctermfg=15
highlight PmenuSel               ctermbg=14     ctermfg=0
highlight SpellBad               ctermfg=1      ctermbg=NONE cterm=underline
highlight SpellCap               ctermfg=4      ctermbg=NONE cterm=underline
highlight SpellLocal             ctermfg=5      ctermbg=NONE cterm=underline
highlight SpellRare              ctermfg=6      ctermbg=NONE cterm=underline
highlight Comment                ctermfg=4      ctermbg=0    cterm=italic
highlight MatchParen             ctermfg=12     ctermbg=8    cterm=none
highlight DiffAdd                ctermfg=2
highlight DiffDelete             ctermfg=1
highlight DiffText               ctermfg=4
highlight DiffChange             ctermfg=8
highlight YCMWarningSection      ctermfg=0      ctermbg=4
highlight Special                ctermfg=9
highlight WarningMsg             ctermfg=10
highlight MoreMsg                ctermfg=15
highlight Directory              ctermfg=11
highlight Folded                 ctermfg=15     ctermbg=0
highlight Underlined             term=underline ctermfg=12
highlight Conceal                ctermbg=NONE   ctermfg=6 cterm=underline

highlight Constant               cterm=none     ctermfg=11   guifg=#ffa0a0
highlight Identifier             ctermfg=12     cterm=none   guifg=#40ffff
highlight Statement              ctermfg=10     gui=bold     guifg=#ffff60
highlight Keyword                ctermfg=13
highlight Conditional            ctermfg=11
highlight Number                 ctermfg=12
highlight PreProc                ctermfg=10     guifg=#ff4500
highlight Type                   ctermfg=13     cterm=italic term=none
highlight Ignore                 ctermfg=0      guifg=bg
highlight Error                  ctermfg=0      ctermbg=1    guifg=White guibg=Red
highlight Todo                   ctermfg=15     ctermbg=8    guifg=Blue  guibg=Yellow
highlight SignColumn             ctermbg=8      ctermfg=12

" Change the highlight of search matches (for use with :set hls).
highlight Search                 ctermfg=0      ctermbg=12   guifg=Black guibg=Yellow

" Change the highlight of visual highlight.

highlight Float                  ctermfg=14     guifg=#88AAEE
highlight Exception              ctermfg=10     ctermbg=0   guifg=Red   guibg=White
highlight Function               ctermfg=14
highlight Typedef                ctermfg=10     ctermbg=8   gui=italic  guifg=White guibg=Blue
highlight SpecialChar            ctermfg=12     ctermbg=8   guifg=Black guibg=White
highlight Delimiter              ctermfg=15     ctermbg=8   guifg=White guibg=Black
highlight SpecialComment         ctermfg=11     ctermbg=8   guifg=Black guibg=Green

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
highlight! link Question Type
highlight! link FoldColumn Folded

highlight link Special        Type
highlight link String         Constant
highlight link Character      Constant
highlight link Boolean        Statement
highlight link Repeat         Conditional
highlight link Label          Type
highlight link Operator       Type
highlight link Include        PreProc
highlight link Define         PreProc
highlight link Macro          PreProc
highlight link PreCondit      PreProc
highlight link StorageClass   Type
highlight link Structure      Type
highlight link Tag            Special
highlight link Debug          Special
highlight link Typedef        Type
