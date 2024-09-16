vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local nvim_tree = require 'nvim-tree'

nvim_tree.setup {
    renderer = {
	icons = {
	    show = {
		file = false,
	    }
	}
    }
}
