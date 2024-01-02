local config = require 'lspconfig'

config.clangd.setup({
    capabilities = {
        textDocument = {
            semanticHighlightingCapabilities = {
                semanticHighlighting = true
            }
        }
    },
})
