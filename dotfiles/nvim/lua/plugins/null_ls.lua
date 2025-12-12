return {
	"https://github.com/nvimtools/none-ls.nvim",
	dependencies = {
		"https://github.com/nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, --lua
				null_ls.builtins.formatting.black, -- python
				null_ls.builtins.formatting.prettierd, --json
				-- null_ls.builtins.diagnostics.eslint_d, --js
				null_ls.builtins.diagnostics.yamllint, --yaml
				null_ls.builtins.diagnostics.mypy, --python
				null_ls.builtins.diagnostics.sqlfluff.with({
					extra_args = { "--dialect", "bigquery" }, -- change to your dialect
				}),
				-- null_ls.builtins.diagnostics.ruff, --python
				null_ls.builtins.diagnostics.hadolint, --dockerfile
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
