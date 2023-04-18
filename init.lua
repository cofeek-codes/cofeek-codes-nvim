require('base')
require('maps')
require('highlights')
require('plugins')
-- local has = function(x)
--   return vim.fn.has(x) == 1
-- end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


-- require('gitsigns').setup {}

        require("rose-pine").setup()
        vim.cmd('colorscheme rose-pine')

require("mason").setup()
require("mason-lspconfig").setup()
--  require'lspconfig'.phpactor.setup{}
require("git").setup()





vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async = true})]]
vim.g.user_emmet_leader_key = ','
vim.g.user_emmet_mode = 'a'
vim.g.astro_typescript = 'enable'
