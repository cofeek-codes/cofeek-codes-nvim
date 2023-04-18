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
    -- use {
    -- 'svrana/neosolarized.nvim',
    -- requires = { 'tjdevries/colorbuddy.nvim' }
    -- }

    -- theme
use{
    'rose-pine/neovim',
    as = 'rose-pine',

}
    -- theme

    use 'hoob3rt/lualine.nvim'
    use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    -- run = ':TSUpdate'
  }
  use 'lumiliet/vim-twig'
  use 'nelsyeung/twig.vim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'glepnir/lspsaga.nvim'

-- *.rs
use 'simrat39/rust-tools.nvim'
-- *.rs


  -- lsp
  use 'wuelnerdotexe/vim-astro'
  use 'tpope/vim-surround'
  use 'kyazdani42/nvim-web-devicons'

  use 'akinsho/nvim-bufferline.lua'
  use {
   'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use {
    'axelvc/template-string.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter' }
  }
  --formatting
  use 'jose-elias-alvarez/null-ls.nvim'
  use('MunifTanjim/prettier.nvim')
  --formatting
  use 'mattn/emmet-vim'

-- time control
  use 'wakatime/vim-wakatime'

  use 'dinhhuy258/git.nvim'
end)
