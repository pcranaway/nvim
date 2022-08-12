vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use { 'wbthomason/packer.nvim' }

	-- completion & lsp


	use {'williamboman/mason.nvim', config = require('configs.mason')}
	use { 'neovim/nvim-lspconfig', config = require('configs.lspconfig')}
	use { "williamboman/mason-lspconfig.nvim", config = require('configs.mason_lspconfig') }

	-- 	use {
	-- 		"glepnir/lspsaga.nvim",
	-- 		config = require("configs.lspsaga")
	-- 	}

	use {
		'hrsh7th/nvim-cmp',
		config = require('configs.nvim_cmp'),
		requires = {
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-cmdline' },
			{ 'L3MON4D3/LuaSnip' }
		}
	}

	-- languages
	use {
		'nvim-treesitter/nvim-treesitter',
		run = require('configs.treesitter')
	}

	-- ui
	use {
		'nvim-lualine/lualine.nvim',
		config = require('configs.statusline'),
		requires = { 'kyazdani42/nvim-web-devicons' }
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		config = require('configs.telescope'),
		requires = { 'nvim-lua/plenary.nvim' }
	}

end)
