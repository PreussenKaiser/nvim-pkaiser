local lspConfig = require 'lspconfig'

lspConfig.lua_ls.setup {
    settings = {
	Lua = {
	    diagnostics = {
		globals = { 'vim' },
	    },
	},
    },
}
