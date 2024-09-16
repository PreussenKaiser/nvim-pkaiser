local config = require 'nvim-treesitter.configs'

config.setup {
    ensure_installed = { 'bash', 'c', 'cpp', 'rust', 'lua', 'vim', 'vimdoc', 'query', 'python' },
    sync_install = false,
    auto_install = true,

    highlight = {
	enable = true,
	additional_vim_regex_highlighting = true,
    },
}
