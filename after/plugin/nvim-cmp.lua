local config = require 'cmp'

config.setup {
	sources = {
		{ name = 'nvim_lsp', },
		{ name = 'buffer', },
	},
}
