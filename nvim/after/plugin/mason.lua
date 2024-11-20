require("mason").setup({})
require("mason-lspconfig").setup({
	-- Replace the language servers listed here
	-- with the ones you want to install
	ensure_installed = { "lua_ls", "gopls", "pyright", "jdtls", "vtsls", "rust_analyzer" },
	handlers = {
		function(server_name)
			if server_name ~= "jdtls" and server_name ~= "rust_analyzer" then
				require("lspconfig")[server_name].setup({})
			end
		end,
	},
})

require("mason-nvim-dap").setup({
	ensure_installed = {},
})

require("mason-tool-installer").setup({

	ensure_installed = {
		"prettier",
		"prettierd",
		"isort",
		"black",
		"stylua",
	},

	auto_update = false,
	run_on_start = true,

	integrations = {
		["mason-lspconfig"] = true,
		["mason-null-ls"] = false,
		["mason-nvim-dap"] = true,
	},
})
