return require('packer').startup(function(use)
  use {
     'neovim/nvim-lspconfig',
     'hrsh7th/cmp-nvim-lsp',
     'hrsh7th/nvim-cmp',
     'hrsh7th/cmp-buffer',
     'hrsh7th/cmp-path',
     'hrsh7th/cmp-cmdline',
     'L3MON4D3/LuaSnip',
     'saadparwaiz1/cmp_luasnip',
     'M0nenvoy/friendly-snippets',
     'lewis6991/impatient.nvim',
     'kylechui/nvim-surround',
     require('plugins/telescope'),
     'plugins/treesitter'
  }
end)
