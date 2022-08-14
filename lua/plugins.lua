
local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
else
  print('Packer is working')
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
 use 'wbthomason/packer.nvim'
 use {
  'svrana/neosolarized.nvim',
  requires = {'tjdevries/colorbuddy.nvim'}
 }
 use 'hoob3rt/lualine.nvim'
 use 'neovim/nvim-lspconfig'
 use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
 use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
 use 'hrsh7th/nvim-cmp' -- Completion
end)
