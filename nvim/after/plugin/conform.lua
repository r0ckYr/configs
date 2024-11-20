local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		-- Conform will run the first available formatter
		javascript = { "prettier", "prettierd", stop_after_first = true, tabWidth = 4 },
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 300,
	},
})
vim.keymap.set({ "n", "v" }, "<leader>p", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 300,
	})
end)
