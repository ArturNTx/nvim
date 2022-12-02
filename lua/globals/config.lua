local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- General Setup
vim.o.number = true
vim.o.completeopt = "menuone,noinsert,noselect"
opt.mouse = 'a'

-- Tabs and Indents
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- Theme
opt.termguicolors = true
cmd [[ colorscheme dracula ]]
g.transparent_enable = true
