vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Install layz.nvim as package manager
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  vim.fn.system({
	  "git",
	  "clone",
	  "--filter=blob:none",
	  "https://github.com/folke/lazy.nvim.git",
	  "--branch=stable",
	  lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}
local opts = {}

-- Load lazy.nvim (https://github.com/folke/lazy.nvim)
require("lazy").setup(plugins, opts)
-- Load telescope (https://github.com/nvim-telescope/telescope.nvim)
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- Load treesitter (https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file)
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = { "bash", "css", "diff", "dockerfile", "go", "groovy", "helm", "html", "lua", "java", "javascript", "kotlin", "latex", "python", "terraform", "vim", "yaml" },
  highlight = { enable = true },
  indent = { enable = true },
})
-- Load colorscheme (https://github.com/catppuccin)
require("catppuccin").setup({
  flavour = "macchiato", -- latte(white), frappe, macchiato, mocha
  transparent_background = true,
})
vim.cmd.colorscheme "catppuccin"
