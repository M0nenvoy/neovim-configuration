local os = require"os"
local terminal = os.getenv("TERM");

require('impatient')

if (terminal ~= "linux") then
    vim.opt.termguicolors = true
end

vim.cmd("colo 256_noir")

-- Cursor
-- vim.cmd[[
-- hi iCursor guifg=white guibg=red
-- hi nCursor guifg=white guibg=grey
-- set guicursor=n-v-c:block-nCursor
-- set guicursor+=i:block-iCursor
-- set guicursor+=i-n-v-c:blinkon200-blinkoff400-blinkwait700
-- ]]
--
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

-- Plugins
require 'plugins/packer'

-- LSP
require 'plugins/cmp-lsp'

-- Mappings
require 'mapping'

-- Surround
require("nvim-surround").setup()
-- Snippets
-- snips work like dogshit idk
-- local luasnip = require("luasnip")
-- luasnip.snippets = require("luasnip-snippets").load_snippets()
require('luasnip.loaders.from_vscode').lazy_load()

require 'plugins/treesitter'

-- :LspInstall
require('mason').setup()
require('mason-lspconfig').setup()
