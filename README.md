# cofeek-codes-nvim

My Neovim config extended form [craftzdog](https://github.com/craftzdog/dotfiles-public)'s config

## So, what does this thing have?

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) - A plugin manager
- [svrana/neosolarized.nvim](https://github.com/svrana/neosolarized.nvim) - solarized dark colorscheme, customized by [craftzdog](https://github.com/craftzdog/dotfiles-public)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - nvim statusline
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim) - VSCode-like pictograms
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP autocomplete
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - nvim-cmp source for buffer words
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion engine plugin for neovim written in Lua
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - config for native LSPs
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) - diagnostics, go-to-definitions, and other
- [MunifTanjim/prettier.nvim](https://github.com/MunifTanjim/prettier.nvim) - Prettier for Neovim
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Package manager for LSP's linters and formatters
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) - A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - Lua `fork` of vim-web-devicons for neovim
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) - File Browser extension for telescope.nvim
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autopairs
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Auto close and auto rename html tag
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua) - A snazzy bufferline (Tabs)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers
- [dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim) - A simple clone of the plugin vim-fugitive

---

Original

- ['themercorp/themer.lua'](https://github.com/themercorp/themer.lua) - A list of cool themes
- ['tpope/vim-commentary'](https://github.com/tpope/vim-commentary) - Quickly comment/uncomment lines of code

- ['nvim-lua/plenary.nvim'](https://github.com/nvim-lua/plenary.nvim) - Stuff improving [telescope](https://github.com/nvim-telescope/telescope.nvim)

---

Added by me

## Keymaps

### Original

- `+` for increment and `-` for decrement
- `dw` to delete last/current word your cursor on
- `Ctrl+a` to select all
- `ss` and `sv` to split window
- `Ctrl+w+arrows` to resize window

### Custom

- `Ctrl+s` to save
- `Ctrl+z` to undo
- `qq` to force quit without save
- `sq` to save and quit
- `Ctrl+Space` to trigger autocomplete
- `Ctrl+e` to open file explorer
- `F2` to rename
- `Ctrl+]` to go to insert mode
