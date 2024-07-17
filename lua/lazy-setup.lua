vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.conceallevel = 2 -- required for Obsidian

-- set leader key
vim.g.mapleader = " "
-- save with Control + s
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
-- switch between windows with Tab
vim.keymap.set("n", "<Tab>", "<C-w>w", { noremap = true, silent = true })
