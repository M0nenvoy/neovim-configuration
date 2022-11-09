local os = require"os"
local terminal = os.getenv("TERM");

require('impatient')

if (terminal ~= "linux") then
    vim.opt.termguicolors = true
end

vim.cmd("colo 256_noir")

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

require("nvim-surround").setup()
require 'plugins/autopair'
require('luasnip.loaders.from_vscode').lazy_load()

-- Substitute
require('substitute').setup({
  on_substitute = nil,
  yank_substituted_text = false,
  range = {
    prefix = "s",
    prompt_current_text = false,
    confirm = false,
    complete_word = true,
    motion1 = false,
    motion2 = false,
    suffix = "",
  },
  exchange = {
    motion = false,
    use_esc_to_cancel = true,
  },
})

require 'plugins/treesitter'

-- :LspInstall
require('mason').setup()
require('mason-lspconfig').setup()

-- Setup the Telescope
require "plugins/telescope-config"
