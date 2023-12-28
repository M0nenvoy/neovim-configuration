local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use {
		require('plugins/telescope'),
		'Yazeed1s/minimal.nvim',
		'wbthomason/packer.nvim',
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
		'nvim-treesitter/nvim-treesitter',
		'williamboman/mason-lspconfig.nvim',
		'williamboman/mason.nvim',
		'windwp/nvim-autopairs',
		'gbprod/substitute.nvim',
		'itchyny/lightline.vim',
		'kyazdani42/blue-moon'
	}

	if bootstrap then
		require('packer').sync()
	end
end)
