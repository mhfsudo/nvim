-- Load colorscheme (https://github.com/catppuccin)

return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        local config = require("catppuccin")
        config.setup({
            flavour = "macchiato", -- latte(white), frappe, macchiato, mocha
            transparent_background = true
        })
        vim.cmd.colorscheme "catppuccin"
    end
}
