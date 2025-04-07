return {
  ---@module 'python'
  {
    "joshzcold/python.nvim",
    ---@type python.Config
    opts = { ---@diagnostic disable-line: missing-fields`
    },
    init = function()
      vim.api.nvim_set_keymap(
        "n",
        "<leader>pv",
        '<cmd>lua require("python.venv").pick_venv()<cr>',
        { desc = "Python pick venv" }
      )
    end,
  }
}
