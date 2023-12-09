vim.o.number = true
vim.o.shiftwidth = 4
vim.o.autoindent = true

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
	    { 'neovim/nvim-lspconfig' },
	    { 'hrsh7th/nvim-cmp' },
	    { 'hrsh7th/cmp-nvim-lsp' },
	    { 'L3MON4D3/LuaSnip' },
	} 
    }
end)
