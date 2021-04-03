let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
  \  'javascriptreact' : {
    \      'extends' : 'jsx',
    \  },
  \  'typescriptreact' : {
    \      'extends' : 'jsx',
    \  },
  \}
augroup emmet
	autocmd!
	autocmd FileType html,php,javascriptreact,typescriptreact imap <buffer> <tab> <plug>(emmet-expand-abbr)
	autocmd FileType html,php,javascriptreact,typescriptreact :EmmetInstall
augroup END
