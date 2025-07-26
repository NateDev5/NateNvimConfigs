return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.clang_format,
					null_ls.builtins.diagnostics.clang_format
				},
			})

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

			vim.api.nvim_create_autocmd("BufPreWrite", {
				callback = function()
					vim.lsp.buf.format({ async = true })
				end,
			})
		end,
	},
}
