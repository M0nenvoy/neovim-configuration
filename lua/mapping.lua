vim.cmd
[[
let mapleader= ' '

"                               ------------ VARIOUS ---------------
nnoremap <leader>S :source % <CR>
nnoremap <leader>w :w <cr>
nnoremap <leader>C :tabedit $myvimrc <CR>
nnoremap <silent> <leader>t :tabnew <CR>
nnoremap <silent> <leader>h :nohl <CR>
nnoremap <silent> <leader>u viwUe
nnoremap <silent> <leader>F :Telescope find_files<cr>

"                               -------------- LSP ---------------
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>r <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>a, <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
inoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>e <cmd>lua vim.diagnostic.open_float()<CR>

inoremap <c-p> <c-a>

"                               ------------ SNIPPETS ---------------
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.

imap <silent><expr> <c-j> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<c-j>'

inoremap <silent> <c-h> <cmd>lua require'luasnip'.jump(-1)<Cr>
snoremap <silent> <c-j> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <c-h> <cmd>lua require('luasnip').jump(-1)<Cr>

"                               ------------ TERMINAL ---------------
tnoremap <Esc> <C-\><C-n>
]]
