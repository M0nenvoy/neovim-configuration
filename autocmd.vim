autocmd InsertLeave * set keymap=
autocmd FileType scss setl iskeyword+=@-@
"autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd FileType rust :nnoremap <buffer> <F5> :Crun<CR>
autocmd FileType rust :nnoremap <buffer> <F6> :Ctest<CR>
autocmd FileType rust :nmap     <buffer> <F4> :split<cr>:term<cr>iwasm-pack build --dev<cr><esc>G
