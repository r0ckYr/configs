local lspconfig = require("lspconfig")
lspconfig.gopls.setup({
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	cmd = { "gopls" },
	root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparama = true,
			},
		},
	},
})
