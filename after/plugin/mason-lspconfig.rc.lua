local status, mason = pcall(require, "mason-lspconfig")
if (not status) then return end

require("mason").setup()
require("mason-lspconfig").setup()

mason.setup {
    --  still works somehow
    automatic_installation = false,
    ensure_installed = { 'tsserver', 'pyright', 'jsonls', 'html', 'cssls', 'intelephense', 'astro', 'tailwindcss',
        'omnisharp', 'gopls', 'rust_analyzer', 'prismals', 'clangd' },
}

require("mason-null-ls").setup({
    automatic_installation = false,
    ensure_installed = { "prettier", "phpcbf", "golines" }
})
