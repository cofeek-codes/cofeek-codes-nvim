local status, mason = pcall(require, "mason-lspconfig")
if not status then
	return
end

require("mason").setup({
	ui = {
		height = 0.85,
		border = "rounded",
	},
})
require("mason-lspconfig").setup()

mason.setup({
	ensure_installed = {
		"tsserver",
		"pyright",
		"jsonls",
		"bashls",
		"html",
		"cssls",
		"intelephense",
		"astro",
		"tailwindcss",
		"omnisharp",
		"gopls",
		"rust_analyzer",
		"prismals",
		"clangd",
		"lua_ls",
	},
})

-- formatters
require("mason-null-ls").setup({
	automatic_installation = false,
	ensure_installed = {
		"prettier",
		"phpcbf",
		"golines",
		"stylua",
		"autopep8",
		"cmake_format",
		"goimports",
		"goimports_reviser",
		"shfmt",
	},
})
