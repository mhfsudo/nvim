-- Load treesitter (https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file)

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            nsure_installed = { "bash", "css", "diff", "dockerfile", "go", "groovy", "helm", "html", "lua", "java", "javascript", "json", "kotlin", "latex", "python", "terraform", "vim", "yaml" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
