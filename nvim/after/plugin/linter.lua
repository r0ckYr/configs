local lint = require("lint")

-- Configure the linters by file type
lint.linters_by_ft = {
	--javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	javascriptreact = { "eslint_d" },
}

-- Set up autocmds to trigger linting on specific events
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	group = vim.api.nvim_create_augroup("linting", { clear = true }),
	callback = function()
		lint.try_lint()
	end,
})

-- Keybinding to trigger linting manually
vim.keymap.set("n", "<leader>l", function()
	lint.try_lint()
end)
