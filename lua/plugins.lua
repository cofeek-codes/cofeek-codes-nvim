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
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'hoob3rt/lualine.nvim'
  use 'neovim/nvim-lspconfig'
  use 'mattn/emmet-vim'
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
  use 'themercorp/themer.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'akinsho/nvim-bufferline.lua'
  use 'jwalton512/vim-blade'
  use 'glepnir/lspsaga.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'lewis6991/gitsigns.nvim'
  use {
    'dinhhuy258/git.nvim'
  }
  use { "williamboman/mason.nvim" }
  use "williamboman/mason-lspconfig.nvim"
end)
