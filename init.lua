vim.cmd("colo 256_noir")

vim.opt.termguicolors = true
-- Cursor
vim.cmd[[
hi iCursor guifg=white guibg=red
hi nCursor guifg=white guibg=grey
set guicursor=n-v-c:block-nCursor
set guicursor+=i:block-iCursor
set guicursor+=i-n-v-c:blinkon200-blinkoff400-blinkwait700
]]
vim.opt.showmode = false
vim.opt.signcolumn="number"

vim.opt.autoindent = true

vim.opt.list = true
vim.opt.wrap = false
vim.opt.tabstop=4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.backspace = "2"
vim.opt.cursorline =true
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.numberwidth = 1
vim.opt.backup = false
vim.opt.updatetime=300

vim.opt.mouse = "a"
vim.opt.cmdheight=2
vim.opt.foldmethod="indent"

vim.opt.foldenable = false
vim.opt.swapfile = false

vim.o.statusline = "%{(&fenc != ''?&fenc:&enc)} | %{&fileformat} | %F"

-- Plugins and other

require('plugins/packer')
-- Mappings

require('mapping')

-- LSP

require('init')

-- Hilight

--vim.cmd
--[[
--hi LspDiagnosticsDefaultError ctermfg=242
--hi LspDiagnosticsDefaultWarning ctermfg=240
--]]
