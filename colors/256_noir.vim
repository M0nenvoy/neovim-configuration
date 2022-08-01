" Vim color file
" Name:       256_noir.vim
" Maintainer: Andreas van Cranenburgh <andreas@unstable.nl>
" Homepage:   https://github.com/andreasvc/vim-256noir/

" Basically: dark background, numerals & errors red,
" rest different shades of gray.
"
" colors 232--250 are shades of gray, from dark to light;
" 16=black, 255=white, 196=red, 88=darkred.

highlight clear
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "256_noir"

let literal = '#00a8e8'
let accent  = '#f9c74f'
let accent2 = '#ff8fa3'

" The line numerations
let numeration  = '#007ea7'
let comment     = '#00a869'
let cursorline_bg = '#333346'

let error   = '#ff5555'
let warn    = '#226080'

let match_paren = '#fa0074'

let visual_bg = '#1b4965'

let pmenu = "#003554"

if has("gui_running") || &t_Co == 256
    hi Normal cterm=NONE ctermfg=250 ctermbg=16 gui=NONE guifg=#cef3ff
    hi Keyword cterm=NONE gui=NONE guifg=#ffffff
    hi Constant cterm=NONE ctermfg=252   gui=NONE guifg=#d0d0d0
    exe printf('hi Type cterm=NONE ctermfg=245 gui=NONE guifg=%s', accent)

    exe printf('hi String cterm=NONE ctermfg=245 gui=NONE guifg=%s', literal)
    exe printf('hi Comment cterm=NONE ctermfg=240 gui=NONE guifg=%s', comment)

" Need to use an `exe` to use variables
    exe printf('hi Conditional guifg=%s', accent2)
    exe printf('hi Function guifg=%s', accent2)
    exe printf('hi Repeat guifg=%s', accent2)
    exe printf('hi Label guifg=%s', accent2)
    exe printf('hi Exception guifg=%s', accent2)
    exe printf('hi Number cterm=NONE ctermfg=196   gui=NONE guifg=%s', literal)
    hi Error cterm=NONE ctermfg=255 ctermbg=88 gui=NONE guifg=#eeeeee guibg=#870000
    hi ErrorMsg cterm=NONE ctermfg=255 ctermbg=124 gui=NONE guifg=#eeeeee guibg=#af0000
    exe printf('hi Search gui=NONE guifg=NONE guibg=%s', visual_bg)
    exe printf('hi IncSearch gui=NONE guifg=NONE guibg=%s', visual_bg)
    hi DiffChange cterm=NONE ctermfg=160 ctermbg=255 gui=NONE guifg=#d70000 guibg=#eeeeee
    exe printf('hi DiffText cterm=bold ctermfg=250 ctermbg=196 gui=bold guifg=#bcbcbc guibg=%s', accent)
    hi SignColumn cterm=NONE ctermfg=124 ctermbg=240 gui=NONE guifg=#af0000 guibg=#585858
    hi SpellBad cterm=undercurl ctermfg=255 ctermbg=88 gui=undercurl guifg=#eeeeee guibg=#870000
    hi SpellCap cterm=NONE ctermfg=255 ctermbg=124 gui=NONE guifg=#eeeeee guibg=#af0000
    hi SpellRare cterm=NONE ctermfg=124   gui=NONE guifg=#af0000
    hi WildMenu cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#585858 guibg=#eeeeee
    exe printf('hi Delimiter guifg=%s', accent2)
    exe printf('hi Pmenu cterm=NONE ctermfg=255 ctermbg=240 gui=NONE guifg=#eeeeee guibg=%s', pmenu)
    exe printf('hi PmenuThumb cterm=NONE ctermfg=232 ctermbg=240 gui=NONE guifg=#080808 guibg=%s', pmenu)
    exe printf('hi PmenuSbar guibg=%s', accent)
    exe printf('hi Scrollbar guibg=%s', accent)
    hi SpecialKey cterm=NONE ctermfg=16 ctermbg=255 gui=NONE guifg=#000000 guibg=#eeeeee
    exe printf('hi MatchParen cterm=NONE ctermfg=16 ctermbg=240 gui=NONE guifg=#000000 guibg=%s', match_paren)
    exe printf('hi CursorLine cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=%s', cursorline_bg)
    hi StatusLine cterm=bold,reverse ctermfg=245   gui=bold,reverse guifg=#8a8a8a
    hi StatusLineNC cterm=reverse ctermfg=236   gui=reverse guifg=#303030
    exe printf('hi Visual ctermfg=250 guibg=%s', visual_bg)
    hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
    exe printf('hi CursorLineNr guibg=%s', cursorline_bg)
    exe printf('hi LineNr guifg=%s', numeration)

"   Lsp related
    exe printf('hi DiagnosticError guifg=%s', error)
    exe printf('hi DiagnosticWarn  guifg=%s', warn)
    exe printf('hi DiagnosticUnderlineError guisp=%s cterm=undercurl gui=undercurl', error)
    exe printf('hi DiagnosticUnderlineWarn  guisp=%s cterm=undercurl gui=undercurl', warn)
else
    hi Normal cterm=NONE ctermfg=Gray ctermbg=Black
    hi Keyword cterm=NONE ctermfg=White ctermbg=Black
    hi Constant cterm=NONE ctermfg=Gray ctermbg=Black
    hi String cterm=NONE ctermfg=Gray ctermbg=Black
    hi Comment cterm=NONE ctermfg=DarkGray ctermbg=Black
    hi Number cterm=NONE ctermfg=Red ctermbg=Black
    hi Error cterm=NONE ctermfg=White ctermbg=DarkRed
    hi ErrorMsg cterm=NONE ctermfg=White ctermbg=Red
    hi Search cterm=NONE ctermfg=Gray ctermbg=DarkGray
    hi IncSearch cterm=reverse ctermfg=White ctermbg=Gray
    hi DiffChange cterm=NONE ctermfg=Red ctermbg=White
    hi DiffText cterm=bold ctermfg=Gray ctermbg=Red
    hi SignColumn cterm=NONE ctermfg=Red ctermbg=DarkGray
    hi SpellBad cterm=undercurl ctermfg=White ctermbg=DarkRed
    hi SpellCap cterm=NONE ctermfg=White ctermbg=Red
    hi SpellRare cterm=NONE ctermfg=Red ctermbg=Black
    hi WildMenu cterm=NONE ctermfg=DarkGray ctermbg=White
    hi Pmenu cterm=NONE ctermfg=White ctermbg=DarkGray
    hi PmenuThumb cterm=NONE ctermfg=Black ctermbg=DarkGray
    hi SpecialKey cterm=NONE ctermfg=Black ctermbg=White
    hi MatchParen cterm=NONE ctermfg=Black ctermbg=DarkGray
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=Black
    hi StatusLine cterm=bold,reverse ctermfg=Gray ctermbg=Black
    hi StatusLineNC cterm=reverse ctermfg=DarkGray ctermbg=Black
    hi Visual cterm=reverse ctermfg=Gray ctermbg=Black
    hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE
endif
highlight! link Boolean Number
" highlight! link Delimiter Normal
highlight! link Identifier Normal
highlight! link Title Normal
highlight! link Debug Normal
" highlight! link Exception Normal
highlight! link FoldColumn Normal
highlight! link Macro Normal
highlight! link ModeMsg Normal
highlight! link MoreMsg Normal
highlight! link Question Normal
" highlight! link Conditional Keyword
highlight! link Statement Keyword
highlight! link Operator Keyword
highlight! link Structure Keyword
" highlight! link Function Keyword
highlight! link Include Keyword
" highlight! link Type Keyword
" highlight! link Typedef Keyword
highlight! link Todo Keyword
" highlight! link Label Keyword
highlight! link Define Keyword
highlight! link DiffAdd Keyword
highlight! link diffAdded Keyword
highlight! link diffCommon Keyword
highlight! link Directory Keyword
highlight! link PreCondit Keyword
highlight! link PreProc Keyword
" highlight! link Repeat Keyword
highlight! link Special Keyword
highlight! link SpecialChar Keyword
highlight! link StorageClass Keyword
highlight! link SpecialComment String
highlight! link Character Number
highlight! link Float Number
highlight! link Tag Number
highlight! link Folded Number
highlight! link WarningMsg Number
highlight! link iCursor SpecialKey
highlight! link SpellLocal SpellCap
highlight! link NonText Comment
highlight! link DiffDelete Comment
highlight! link diffRemoved Comment
highlight! link PmenuSbar Visual
highlight! link PmenuSel Visual
highlight! link VisualNOS Visual
highlight! link VertSplit Visual
highlight! link Cursor StatusLine
highlight! link Underlined SpellRare
highlight! link rstEmphasis SpellRare
highlight! link diffChanged DiffChange
