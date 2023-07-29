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

	{
		"tpope/vim-fugitive"
	},

	{
		"tpope/vim-rhubarb"
	},

	{ 'codota/tabnine-nvim', build = "./dl_binaries.sh" },



	{
		"freddiehaddad/feline.nvim",


	},
	{
		"lewis6991/gitsigns.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		}
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
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

	{
		"stevearc/dressing.nvim",
		event = "BufEnter",
		config = function()
			require("dressing").setup({
				input = {
					win_options = {
						winblend = 0,
					},
				},
			})
		end,
	},


	-- time control
	"wakatime/vim-wakatime",
	{
		"ishan9299/nvim-solarized-lua",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.api.nvim_create_autocmd(
				"ColorScheme",
				{
					pattern = "solarized",
					callback = function()
						vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
						vim.api.nvim_set_hl(0, 'Pmenu', { link = 'TelescopeNormal' })
						vim.api.nvim_set_hl(0, 'LineNr', { fg = '#586e75', bg = 'none' })
						vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#b58900', bg = 'none' })
						vim.api.nvim_set_hl(0, 'CursorLine', { fg = 'none', bg = '#002b36' })
						vim.api.nvim_set_hl(0, 'Visual', { fg = '#002b36', bg = '#586e75' })
						vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = '#dc322f', bg = '#360909' })
						vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = '#b58900', bg = '#1c1500' })
						vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = '#268bd2', bg = '#0e3550' })
						vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = '#2aa198', bg = '#0a2725' })
						vim.api.nvim_set_hl(0, 'PmenuSel', { bg = '#586e75' })
						vim.api.nvim_set_hl(0, 'LazyButton', { link = "Visual" })
						vim.api.nvim_set_hl(0, 'LazyButtonActive', { link = "IncSearch" })
						vim.cmd('highlight GitSignsAdd guibg=none')
						vim.cmd('highlight GitSignsChange guibg=none')
						vim.cmd('highlight GitSignsDelete guibg=none')
					end,
					group = vim.api.nvim_create_augroup("FixSolarized", { clear = true }),
					desc = "Fix some highlight for solarized colorscheme"
				}
			)

			vim.g.solarized_termtrans = 1
			vim.cmd("colorscheme solarized")
		end
	},
	{
		'mrcjkb/haskell-tools.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope.nvim', -- optional
		},
		ft = "haskell",
		config = function()
			local ht = require('haskell-tools')
			local def_opts = { noremap = true, silent = true, }
			ht.start_or_attach {
				hls = {
					on_attach = function(client, bufnr)
						local opts = vim.tbl_extend('keep', def_opts, { buffer = bufnr, })
						-- haskell-language-server relies heavily on codeLenses,
						-- so auto-refresh (see advanced configuration) is enabled by default
						vim.keymap.set('n', '<C-h>c', vim.lsp.codelens.run, opts)
						vim.keymap.set('n', 'K', ht.hoogle.hoogle_signature, opts)
						vim.keymap.set('n', '<C-h>a', ht.lsp.buf_eval_all, opts)
					end,
				},
			}

			-- Suggested keymaps that do not depend on haskell-language-server:
			local bufnr = vim.api.nvim_get_current_buf()
			-- set buffer = bufnr in ftplugin/haskell.lua
			local opts = { noremap = true, silent = true, buffer = bufnr }

			-- Toggle a GHCi repl for the current package
			vim.keymap.set('n', '<C-h>rf', ht.repl.toggle, opts)
			-- Toggle a GHCi repl for the current buffer
			vim.keymap.set('n', '<C-h>rr', function()
				ht.repl.toggle(vim.api.nvim_buf_get_name(0))
			end, def_opts)
			vim.keymap.set('n', '<C-h>rq', ht.repl.quit, opts)
			-- dap.discover_configurations(bufnr)
		end,
		branch = '1.x.x', -- recommended
	}
}


require("lazy").setup(p, {
	install = {
		colorscheme = { "solarized", "habamax" }
	},
	ui = {
		border = "rounded",
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			}
		}
	}
})
