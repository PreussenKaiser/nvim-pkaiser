vim.cmd [[packadd packer.nvim]]

local packer = require 'packer'

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use {
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
	    vim.cmd('colorscheme rose-pine')
	end
    }
    use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
	    { 'neovim/nvim-lspconfig', },
	    { 'hrsh7th/nvim-cmp', },
	    { 'hrsh7th/cmp-buffer' },
	    { 'hrsh7th/cmp-nvim-lsp', },
	    { 'L3MON4D3/LuaSnip' },
	    { 'nvim-tree/nvim-tree.lua' },
	    { 'nvim-tree/nvim-web-devicons' },
	},
    }
    use {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	requires = {
	    { 'nvim-lua/plenary.nvim' },
	},
    }
end)
