local status, mason = pcall(require, "mason-lspconfig")
if (not status) then return end

mason.setup {
    automatic_installation = false,
    ensure_installed = { 'tsserver', 'pyright', 'jsonls', 'html', 'cssls', 'intelephense', 'astro', 'tailwindcss', 'omnisharp', 'gopls', 'rust_analyzer', 'prismals', 'clangd'},
-- :MasonInstallAll to install
}
