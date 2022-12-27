local status, mason = pcall(require, "mason-lspconfig")
if (not status) then return end

mason.setup {
    ensure_installed = { 'tsserver', 'pyright', 'jsonls', 'html', 'cssls', 'intelephense', 'astro', 'tailwindcss' },
    automatic_installation = true
}