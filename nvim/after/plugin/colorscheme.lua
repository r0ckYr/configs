function ColorMe(color)
	if color then
		vim.cmd.colorscheme(color)
	else
		vim.cmd("colorscheme obscure")
	end
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
end

ColorMe()
