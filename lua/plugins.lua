
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
 use 'onsails/lspkind-nvim'
 use 'hrsh7th/cmp-buffer'
 use 'hrsh7th/cmp-nvim-lsp'
 use 'hrsh7th/nvim-cmp'
 use 'L3MON4D3/LuaSnip'
 use 'tpope/vim-commentary'
 use {
'nvim-treesitter/nvim-treesitter',
run = ':TSUpdate'
 }
--  use 'windwp/nvim-autopairs'
--  use 'windwp/nvim-ts-autotag'
end)

