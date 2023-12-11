local config = require 'lspconfig'

config.lua_ls.setup {
    settings = {
	Lua = {
	    diagnostics = {
		globals = { 'vim' },
	    },
	},
    },
}
