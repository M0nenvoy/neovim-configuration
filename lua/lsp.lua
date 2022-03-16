local nvim_lsp  = require('lspconfig')
local os        = require('os')

local on_attach = function (client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    local opts = { noremap = true, silent = true }

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- <C-space> is interpreted as <c-@>
    buf_set_keymap('i', '<C-@>', '<c-x><c-o>', opts)
    buf_set_keymap('i', '<C-space>', '<c-x><c-o>', opts)

    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n',  'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
end

-- nvim_lsp.java_language_server.setup {
--     on_attach = on_attach,
--     cmd = {'lang_server_linux.sh'},
-- };
local jdtls_cmd = os.getenv("JDTLS_HOME");
-- root_dir = require('jdtls.setup').find_root({'.git', 'mvnw'});
assert(jdtls_cmd ~= nil, "JDTLS_HOME is not set");
-- assert(root_dir ~= nil, "Root dir not found");
nvim_lsp.jdtls.setup {
    on_attach   = on_attach,
    cmd         = { jdtls_cmd .. '/' .. 'jdtls'},
}
-- html : npm i -g vscode-langservers-extracted
--
nvim_lsp.html.setup {
    filetypes = { 'html', 'xml' };
    on_attach = on_attach;
};
local servers = { 'ccls' };
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
