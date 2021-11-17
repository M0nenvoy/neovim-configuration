vim.cmd
[[
let mapleader=' '

nnoremap <leader>S :source % <CR>
nnoremap <leader>w :w <cr>
nnoremap <leader>C :tabedit $myvimrc <CR>
nnoremap <silent> <leader>t :tabnew <CR>
nnoremap <silent> <leader>h :nohl <CR>
nnoremap <silent> <leader>u viwUe
nnoremap <silent> <leader>F :Telescope find_files<cr>

inoremap <C-]> <C-x><C-o>

tnoremap <Esc> <C-\><C-n>
]]
