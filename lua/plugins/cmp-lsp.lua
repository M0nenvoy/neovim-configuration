local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
	'confirm_done',
	cmp_autopairs.on_confirm_done()
)

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	enabled = function()
		local context = require 'cmp.config.context'
		return not context.in_treesitter_capture("comment")
			and not context.in_syntax_group("Comment")
			and not context.in_treesitter_capture("string")
			and not context.in_syntax_group("String")
	end,
	completion = {
		-- autocomplete = true,
	},
	view = {
		entries = "wildmenu"
	},
	matching = {
		-- disallow_fuzzy_matching = true,
		-- disallow_partial_matching = true,
		-- disallow_prefix_unmatching = true
	},
	experimental = {
		ghost_text = true
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
	}, {
		{ name = 'buffer' },
	})
})

cmp.setup.filetype('TelescopePrompt', {
	enabled = false
})


local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lcfg = require('lspconfig')

lcfg['emmet_ls'].setup {
	capabilities = capabilities,
	filetypes = { 'html', 'css', 'sass', 'scss' },
}
lcfg['gopls'].setup { capabilities = capabilities }
lcfg['pyright'].setup { capabilities = capabilities }
lcfg['clangd'].setup { capabilities = capabilities }
lcfg['rust_analyzer'].setup {
	capabilities = capabilities,
	cmd = { 'rustup', 'run', 'stable', 'rust-analyzer' }
}

lcfg['tsserver'].setup {
	capabilities = capabilities,
	cmd = { 'typescript-language-server', '--stdio' }
}

lcfg['lua_ls'].setup { capabilities = capabilities }
lcfg['intelephense'].setup { capabilities = capabilities }
lcfg['jdtls'].setup { capabilities = capabilities }

-- XML support
lcfg['lemminx'].setup { capabilities = capabilities }
vim.cmd [[
hi CmpItemKind ctermfg=white
]]
