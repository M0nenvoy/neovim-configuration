local configs = require('nvim-treesitter.configs')
configs.setup {
--  ensure_installed = "all",
    sync_install = false,
    auto_install = true,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "cpp", "bash" },
        additional_vim_regex_highlighting = false,
    },
    -- indent = { enable = true },
}
