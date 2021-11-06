set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="pink"

hi Normal    ctermfg=231 ctermbg=none
hi ErrorMsg  ctermfg=205 ctermbg=none
hi visual    ctermbg=239
hi Todo      ctermfg=231 ctermbg=none cterm=bold
hi Search    ctermfg=231 ctermbg=242
hi IncSearch ctermfg=231 ctermbg=242

hi SpecialKey ctermfg=244
hi Directory  ctermfg=253
hi Title      ctermfg=231 cterm=bold
hi WarningMsg ctermfg=231 ctermbg=none cterm=undercurl guisp=#ff5f87
hi ModeMsg    ctermfg=231
hi MoreMsg    ctermfg=231
hi Question   ctermfg=231 cterm=none
hi NonText    ctermfg=243 guifg=#304673

hi Menu         ctermfg=253
hi WildMenu     ctermfg=253 ctermbg=233 cterm=none
hi Pmenu        ctermfg=253 ctermbg=233 
hi PmenuSel     ctermfg=233 ctermbg=255
hi def link PmenuThumb PmenuSel
hi PmenuSbar    ctermbg=233

hi TabLine      ctermfg=244 ctermbg=none cterm=none
hi TablineSel   cterm=bold
hi TablineFill  cterm=none


hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=bold,reverse
hi VertSplit    ctermfg=249 ctermbg=none cterm=none

hi Folded     ctermfg=248 ctermbg=none cterm=bold
hi FoldColumn ctermfg=248 ctermbg=none cterm=bold
hi SignColumn ctermbg=none

hi LineNr       ctermfg=245 cterm=none guifg=#304673
hi CursorLineNr ctermfg=255 cterm=bold guifg=#ffffff gui=bold
hi CursorLine   ctermfg=none ctermbg=234 cterm=none guibg=#13191E
hi CursorColumn ctermbg=239 cterm=none
hi CursorIM     ctermbg=239 cterm=none gui=bold
hi MatchParen   ctermbg=242 guibg=#9CA9BC guifg=#02080D gui=bold

hi DiffAdd    ctermfg=157 ctermbg=none cterm=none
hi DiffDelete ctermfg=218 ctermbg=none cterm=none
hi DiffChange ctermfg=228 ctermbg=none cterm=none
hi DiffText   ctermfg=229 ctermbg=none cterm=bold

"" Style
hi Bold       cterm=bold gui=bold
hi Underlined cterm=underline
hi Italic     cterm=italic gui=italic
hi Ignore     cterm=none
hi Error      ctermfg=red ctermbg=none cterm=bold,undercurl guisp=#ff5f87

"" Comment
hi Comment         ctermfg=250
hi SpecialComment  ctermfg=253

"" Type
hi Constant    ctermfg=251
hi String      ctermfg=217
hi Character   ctermfg=251
hi Number      ctermfg=251
hi Boolean     ctermfg=251
hi Float       ctermfg=251

hi Special     ctermfg=247
hi SpecialChar ctermfg=247
hi Tag         ctermfg=231
hi Debug       ctermfg=231
hi Delimiter   ctermfg=252

"" Identifier 
hi Identifier   ctermfg=245
" Changed from 186 to 3
hi Function     ctermfg=255 cterm=italic gui=italic
hi Operator     ctermfg=250

"" Keyword
hi Statement   ctermfg=205
hi Conditional ctermfg=205
hi Repeat      ctermfg=205
hi Label       ctermfg=205
hi Keyword     ctermfg=205
hi Exception   ctermfg=205

hi Type         ctermfg=255 cterm=italic guifg=#eeeeee gui=italic
hi StorageClass ctermfg=255 guifg=#ffffff
hi Structure    ctermfg=205 cterm=italic guifg=#A64962 gui=italic
hi Typedef      ctermfg=205 cterm=italic guifg=#A64962 gui=italic

"" C/C++ Stuff
hi PreProc   ctermfg=249
hi PreCondit ctermfg=205
hi Include   ctermfg=205
hi Define    ctermfg=205
hi Macro     ctermfg=205

"" Spell Check
hi SpellBad    ctermfg=none ctermbg=none cterm=undercurl guisp=#ff5f87
hi SpellCap    ctermfg=none ctermbg=none cterm=undercurl guisp=#ff5f87
hi SpellLocal  ctermfg=none ctermbg=none cterm=undercurl guisp=#ff5f87

"" Plugin
" NerdTree
hi def link NERDTreeOpenable  SpecialChar
hi def link NERDTreeCloseable SpecialChar

" CoC.vim
hi def link CocErrorFloat   WildMenu
hi def link CocWarningFloat WildMenu
hi def link CocInfoFloat    WildMenu
hi def link CocHintFloat    WildMenu


hi def link CocErrorHighlight   Error
hi def link CocWarningHighlight WarningMsg
hi def link CocInfoHighlight    WarningMsg
hi def link CocHintHighlight CocHintSign
 
