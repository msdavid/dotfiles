return  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      open_on_directory = true,
      window = {
        position = "right",
        width = 40,
      }
    })
    vim.keymap.set('n','<C-n>', ":Neotree filesystem reveal right<CR>")
  end
}
