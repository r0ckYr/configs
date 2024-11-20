require("nvim-web-devicons").setup()
require("nvim-tree").setup {
    hijack_cursor = true,
    hijack_directories = {
        enable = false,
    },
    view = {
        width = 40
    },
    auto_reload_on_write = true,
}
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")


-- treesitter context ( jump to function start)
vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })
