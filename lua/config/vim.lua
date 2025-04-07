-- Enable middle-click paste
vim.opt.mouse = "a" -- Enable mouse support in all modes
vim.opt.mousemoveevent = true -- Enable mouse movement events
vim.opt.clipboard = "unnamedplus"

-- Tabs settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true

-- Other Options
vim.opt.number = true
vim.opt.cursorline = true

vim.opt.undofile = true
vim.opt.showmode = false
vim.opt.smartcase = true

if os.getenv("SSH_CONNECTION") then
	vim.g.clipboard = {
		name = "OSC 52",
		copy = {
			["+"] = require("vim.ui.clipboard.osc52").copy("+"),
			["*"] = require("vim.ui.clipboard.osc52").copy("*"),
		},
		paste = {
			["+"] = require("vim.ui.clipboard.osc52").paste("+"),
			["*"] = require("vim.ui.clipboard.osc52").paste("*"),
		},
	}
end

-- keymaps

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Code Format" })
