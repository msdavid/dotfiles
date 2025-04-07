-- Enable middle-click paste by setting appropriate mouse options
vim.opt.mouse = "a"     -- Enable mouse support in all modes
vim.opt.mousemoveevent = true  -- Enable mouse movement events
vim.opt.clipboard = "unnamedplus"

-- Tabs settings
vim.opt.expandtab = true
vim.opt.tabstop = 2       -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2    -- Number of spaces for each step of indent
vim.opt.softtabstop = 2   -- Number of spaces a tab counts for while editing
vim.opt.autoindent = true -- Copy indent from current line when starting a new line

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
