require'lspconfig'.lua_ls.setup {
    settings = {
	Lua = {
	    diagnostics = {
		globals = { 'vim' },
	    },
	},
    },
}

vim.o.number = true
vim.o.shiftwidth = 4
vim.o.autoindent = true
