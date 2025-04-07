return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		require("oil").setup({
			float = { max_width = 0.8, max_height = 0.8 },
			view_options = {
				show_hidden = true,
			},
		})
		vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {})
	end,
}
