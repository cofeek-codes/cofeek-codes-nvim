require('base')
require('maps')
require('highlights')
require('plugins')
local has = function(x)
  return vim.fn.has(x) == 1
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true



require 'lspconfig'.pyright.setup {}
require 'lspconfig'.tsserver.setup {}
require 'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
-- require'lspconfig'.phpactor.setup{}

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
