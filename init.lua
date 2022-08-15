require('base')
require('maps')
require('highlights')
require('plugins')
local has = function(x)
  return vim.fn.has(x) == 1
end

require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
