return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  use {
     'neovim/nvim-lspconfig',
     'nvim-treesitter/nvim-treesitter',
     require('plugins/telescope'),
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
end)
