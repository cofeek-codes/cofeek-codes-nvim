# cofeek-codes-nvim

My Neovim config completely rebuilt with [Lazy.nvim](https://github.com/folke/lazy.nvim)

## So, what does this thing have?

- [ishan9299/nvim-solarized-lua](https://github.com/ishan9299/nvim-solarized-lua) - solarized dark colorscheme, customized by [leonasdev](https://github.com/leonasdev/.dotfiles)
- [famiu/feline.nvim](https://github.com/famiu/feline.nvim) - nvim statusline
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
- ['mattn/emmet-vim'](https://github.com/mattn/emmet-vim) - Emmet

- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - git wrapper

- [tpope/vim-rhubarb](https://github.com/tpope/vim-rhubarb) - git browse wrapper

- [codota/tabnine-nvim](https://github.com/codota/tabnine-nvim) - tabnine integration

- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - git status column and few ui commands

- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - project tree view

- [lumiliet/vim-twig](https://github.com/lumiliet/vim-twig) - twig template language support
- [simrat39/rust-tools.neovim](https://github.com/simrat39/rust-tools.nvim) - extended rust support

- [akinsho/flutter-tools.neovim](https://github.com/akinsho/flutter-tools.nvim) - support for flutter apps development

- [tpope/vim-surround](https://github.com/tpope/vim-surround) - text wrapping for nvim

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments

- [axelvc/template-string.nvim](https://github.com/axelvc/template-string.nvim) - js template string insertion

- [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime) - time control

## Keymaps

- `+` for increment and `-` for decrement
- `dw` to delete last/current word your cursor on
- `Ctrl+a` to select all
- `ss` and `sv` to split window
- `Ctrl+w+arrows` to resize window

- `Ctrl+s` to save
- `Ctrl+z` to undo
- `qq` to force quit without save
- `sq` to save and quit
- `Ctrl+Space` to trigger autocomplete
- `Ctrl+e` to open file explorer
- `F2` to rename
- `Ctrl+]` to go to insert mode
- `<Emmet shortcut>,,` to emmet autocomplete

- VISUAL LINE: `J/K` to move line down/up
- `Ctrl+g` to open gitsigns menu
- `Ctrl+j` to go to next error/warn/info using lspsaga
- `Ctrl+c` to use open code actions menu
- `cc` to copy to clipboard
