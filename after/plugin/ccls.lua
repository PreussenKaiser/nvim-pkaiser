local config = require 'lspconfig'

config.ccls.setup({
    use_defaults = true,
    init_options = {
	cache = {
	    directory = "/tmp/ccls-cache",
	},
    },
})
