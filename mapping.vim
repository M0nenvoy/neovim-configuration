function ToggleKeyMap()
	if (&keymap == '')
		set keymap=russian-jcukenwin
	else
		set keymap=
	endif
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
 
nnoremap <SPACE> <Nop>

let mapleader=' '

inoremap <Tab> <nop>
nnoremap <leader>S :source % <CR>
nnoremap <leader>w :w <cr>
nnoremap <leader>C :tabedit $myvimrc <CR>
nnoremap <silent> <leader>t :tabnew <CR>
nnoremap <silent> <leader>h :nohl <CR>
nnoremap <silent> <leader>u viwUe


nnoremap <silent> <leader>F :FZF<CR>

tnoremap <Esc> <C-\><C-n>

" Leaving via <c-c> in nessecery
inoremap <c-p> <c-c>:call ToggleKeyMap()<CR>a
"
"
" Coc-section
"
"
" Coc-on-enter is vewy important! It handles brackets and html tags opening
" you know what i'm saying?
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Show suggestions! Ctrl-space doesn't work though. Dunno why
inoremap <silent><expr> <c-]> coc#refresh()
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gy <plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Highlightes same words!
nmap <F2> <plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>

