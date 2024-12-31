local config = require 'telescope'

config.setup { }

local builtin = require 'telescope.builtin'

vim.keymap.set('n', '<leader>ff', builtin.find_files, { })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { })
vim.keymap.set('n', '<leader>rr', builtin.lsp_references, { })
