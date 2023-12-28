local os = require "os"
local terminal = os.getenv("TERM");

if (terminal ~= "linux") then
	vim.opt.termguicolors = true
end

vim.cmd [[
if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
        let &t_SI = "\e[5 q"
        let &t_EI = "\e[2 q"
endif

let g:lightline = {
      \ 'colorscheme': 'blue-moon',
      \ }

colo blue-moon

command Format lua vim.lsp.buf.format()

]]


vim.opt.showmode       = false
vim.opt.signcolumn     = "number"

vim.opt.autoindent     = false
vim.opt.cindent        = false
vim.opt.preserveindent = false
vim.opt.copyindent     = false
vim.opt.softtabstop    = 0

vim.opt.list           = true
vim.opt.wrap           = false
vim.opt.tabstop        = 8
vim.opt.expandtab      = false
vim.opt.backspace      = "2"
vim.opt.cursorline     = true
vim.opt.nu             = true
vim.opt.rnu            = true
vim.opt.numberwidth    = 1
vim.opt.backup         = false
vim.opt.updatetime     = 300
vim.opt.mouse          = "a"
vim.opt.cmdheight      = 2
vim.opt.foldmethod     = "indent"

vim.opt.foldenable     = false
vim.opt.swapfile       = false

-- Plugins
require 'plugins/packer'

-- LSP
require 'plugins/cmp-lsp'

-- Mappings
require 'mapping'

-- Stuff
require('nvim-surround').setup()
require('plugins/autopair')
require('luasnip.loaders.from_vscode').lazy_load()

-- Substitute
require('substitute').setup({
	on_substitute = nil,
	yank_substituted_text = false,
	range = {
		prefix = "s",
		prompt_current_text = false,
		confirm = false,
		complete_word = false,
		motion1 = false,
		motion2 = false,
		suffix = "",
	},
	exchange = {
		motion = false,
		use_esc_to_cancel = true,
	},
})

-- require 'plugins/treesitter'

-- :LspInstall
require('mason').setup()
require('mason-lspconfig').setup()

-- Setup the Telescope
require "plugins/telescope-config"

vim.cmd [[
hi Whitespace guibg=none guifg=#3a4087
]]
