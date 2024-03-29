local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

null_ls.setup({
	sources = {

		null_ls.builtins.formatting.prettier.with({
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--arrow-parens=avoid" },
		}),
		null_ls.builtins.formatting.autopep8,
		null_ls.builtins.formatting.phpcbf,
		null_ls.builtins.formatting.golines,
		null_ls.builtins.formatting.goimports,
		null_ls.builtins.formatting.goimports_reviser,
		null_ls.builtins.formatting.cmake_format,
		null_ls.builtins.formatting.rustfmt,
		null_ls.builtins.formatting.dart_format,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.shfmt,
		null_ls.builtins.code_actions.shellcheck
	},
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.api.nvim_clear_autocmds({ buffer = 0, group = augroup_format })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup_format,
				buffer = 0,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end
	end,
})
