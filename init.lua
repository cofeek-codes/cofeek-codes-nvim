require('base')
require('maps')
require('highlights')

local has = function(x)
  return vim.fn.has(x) == 1
end