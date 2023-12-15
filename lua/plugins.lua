vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
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
	    { 'neovim/nvim-lspconfig' },
	    { 'hrsh7th/nvim-cmp' },
	    { 'hrsh7th/cmp-nvim-lsp' },
	    { 'L3MON4D3/LuaSnip' },
	},
	config = function(config)
	    config.extend_lspconfig()

	    config.on_attach(function(client, bufnr)
		config.default_keymaps({ buffer = bufnr })
	    end)

	    config.setup_servers({ 'lua-ls', 'ccls' })
	end
    }
end)
