-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
  expand = function(args)
    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
  end,
},
enabled = function ()
    -- disable completion in comments
    -- Trying out comment
    local context = require 'cmp.config.context'
    if vim.api.nvim_get_mode().mode == 'c' then
        return true
    else
        return (not context.in_syntax_group("Comment")and not context.in_treesitter_capture("comment")
        and (not context.in_syntax_group("String") and not context.in_treesitter_capture("string")))
    end
end,
completion = {
--  autocomplete = true,
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
  -- { name = 'ultisnips' }, -- For ultisnips users.
  -- { name = 'snippy' }, -- For snippy users.
}, {
  { name = 'buffer' },
})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
  { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
}, {
  { name = 'buffer' },
})
})

-- Disable autocompletion in telescope
cmp.setup.filetype('TelescopePrompt', {
    enabled = false
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
mapping = cmp.mapping.preset.cmdline(),
sources = {
  { name = 'buffer' }
}
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lcfg = require('lspconfig')

lcfg['emmet_ls'].setup  {
    capabilities = capabilities,
    filetypes = { 'html', 'php', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss' },
}
lcfg['gopls'].setup     { capabilities = capabilities }
lcfg['pyright'].setup   { capabilities = capabilities }
lcfg['ccls'].setup      { capabilities = capabilities }
lcfg['tsserver'].setup  { capabilities = capabilities }
lcfg['sumneko_lua'].setup { capabilities = capabilities }
lcfg['intelephense'].setup { capabilities = capabilities }
lcfg['tailwindcss'].setup { capabilities = capabilities }


-- Get rid of that ugly ass yellow color
vim.cmd[[
hi CmpItemKind ctermfg=white
]]