vim.g.mapleader = " "

vim.o.history = 50
vim.o.laststatus = 2

vim.o.showmode = true
vim.o.showcmd = true
vim.o.modeline = true
vim.o.ruler = true
vim.o.title = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.linebreak = true
vim.o.autoindent = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.gdefault = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.showmatch = true
vim.o.hidden = true
vim.o.backspace = "eol,start,indent"

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.o.shiftround = true
vim.o.expandtab = true

vim.o.mouse = ""
vim.o.wildmenu = true
vim.o.foldenable = false

vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.o.termguicolors = true

vim.o.scrolloff = 10
vim.o.signcolumn = "yes"

vim.o.updatetime = 50

vim.o.colorcolumn = "80"

vim.o.splitright = true
vim.o.splitbelow = true

vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Qall", "qall", { bang = true })
