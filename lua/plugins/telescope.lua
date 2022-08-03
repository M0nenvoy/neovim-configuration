return {
    'nvim-telescope/telescope.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
    requires = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        require('telescope').setup {
            extensions = {
                fuzzy                   = true,
                override_generic_sorter = true,
                override_file_sorter    = true,
                case_mode               = "smart_case",
            }
        }

        require('telescope').load_extension('fzf')
    end
}
