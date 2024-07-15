-- Load neo-tree (https://github.com/nvim-neo-tree/neo-tree.nvim)

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-t>', ':Neotree filesystem reveal left<CR>', {})
    vim.keymap.set('n', '<leader>tc', ':Neotree close<CR>', {})
    vim.keymap.set('n', '<leader>tg', ':Neotree git_status float<CR>', {})
  end
}
