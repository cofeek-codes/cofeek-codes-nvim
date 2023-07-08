local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local p = {

	-- theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			transparent_background = false,
		},
	},
	-- theme

	{
		"hoob3rt/lualine.nvim",
		dependencies = {
			{ "arkav/lualine-lsp-progress", event = "BufRead" },
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	},
	"nvim-treesitter/nvim-treesitter",
	"lumiliet/vim-twig",
	"nelsyeung/twig.vim",
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-file-browser.nvim",
	-- lsp
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words
	"hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim's built-in LSP
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	"js-everts/cmp-tailwind-colors",
	"onsails/lspkind-nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"L3MON4D3/LuaSnip",
	"glepnir/lspsaga.nvim",
	"wuelnerdotexe/vim-astro",

	-- *.rs
	"simrat39/rust-tools.nvim",
	-- *.rs

	-- flutter
	{
		"akinsho/flutter-tools.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
	},
	-- flutter

	-- lsp
	"tpope/vim-surround",
	"kyazdani42/nvim-web-devicons",

	"akinsho/nvim-bufferline.lua",
	{
		"numToStr/Comment.nvim",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
	{
		"axelvc/template-string.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},
	--formatting
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
	},
	--formatting
	"mattn/emmet-vim",

	-- time control
	"wakatime/vim-wakatime",
}

local o = {}

require("lazy").setup(p)
