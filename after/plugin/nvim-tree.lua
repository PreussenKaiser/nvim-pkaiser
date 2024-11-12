vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local config = require 'nvim-tree'

config.setup {
	renderer = {
		icons = {
			show = {
				file = false,
			}
		}
	},
	filters = {
		custom = { '.git', 'bin', 'obj', 'build', 'node_modules' },
		exclude = { '.gitignore', '.gitattributes', '.gitmodules' },
	},
}

vim.cmd([[command! -nargs=0 T NvimTreeOpen]])
