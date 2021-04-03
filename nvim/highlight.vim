highlight Normal ctermfg=none ctermbg=none
 
hi matchparen cterm=underline ctermfg=none ctermbg=none
hi LineNr ctermfg=red
hi CursorLineNr ctermfg=LightRed

hi Error ctermfg=red ctermbg=none cterm=underline
hi Comment ctermfg=darkblue

hi HtmlTagName ctermfg=magenta
hi HtmlString ctermfg=none
hi TabLine ctermbg=none cterm=none
hi TabLineFill cterm=none 
hi TabLineSel ctermbg=none ctermfg=DarkBlue

hi SignColumn ctermbg=none
hi Pmenu cterm=none ctermfg=none ctermbg=black
hi PmenuSel cterm=none ctermfg=black ctermbg=white  


hi! def link PmenuSbar Pmenu
hi! def link PmenuThumb PmenuSel 
hi! def link ErrorMsg Error



" Coc section
hi CocErrorHighlight ctermfg=red cterm=underline
hi CocHighlightText ctermbg=none cterm=underline
