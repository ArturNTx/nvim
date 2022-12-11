local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader Key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
keymap("n", "<leader>r", ":luafile %<CR>", opts)

-- Disable Arrow Keys
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)

-- Move Cursor in Insert Mode
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-l>", "<Right>", opts)

-- Move Lines
keymap("n", "<S-Up>", ":m .-2<CR>", opts)
keymap("n", "<S-Down>", ":m .+1<CR>", opts)
keymap("v", "<S-Up>", "dkP", opts)
keymap("v", "<S-Down>", "djP", opts)

keymap("n", "<C-k>", ":m .-2<CR>", opts)
keymap("n", "<C-j>", ":m .+1<CR>", opts)
keymap("v", "<C-k>", "dkP", opts)
keymap("v", "<C-j>", "djP", opts)

-- Quick Exit Insert Mode
keymap("i", "jk", "<ESC>", opts)

-- Clear Highlights
keymap("n", "<leader><ESC>", ":nohlsearch<CR>", opts)

-- Buffers Navigation
keymap("n", "<leader>.", ":bnext<CR>", opts)
keymap("n", "<leader>,", ":bprev<CR>", opts)
keymap("n", "<leader>w", ":bw<CR>", opts)
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprev<CR>", opts)

-- Comment
keymap("n", "<leader>cc", ":CommentToggle<CR>", opts)
keymap("v", "<leader>cc", ":CommentToggle<CR>", opts)

-- Surround
keymap("n", '<leader>"', 'viw<ESC>a"<ESC>bi"<ESC>ela', opts)
keymap("n", "<leader>'", "viw<ESC>a'<ESC>bi'<ESC>ela", opts)
keymap("n", '<leader>(', 'viw<ESC>a)<ESC>bi(<ESC>ela', opts)
keymap("n", '<leader>[', 'viw<ESC>a]<ESC>bi[<ESC>ela', opts)
keymap("n", '<leader>{', 'viw<ESC>a}<ESC>bi{<ESC>ela', opts)
keymap("n", '<leader><', 'viw<ESC>a><ESC>bi<<ESC>ela', opts)

keymap("v", '<leader>"', 'c""<ESC>Pea', opts)
keymap("v", "<leader>'", "c''<ESC>Pea", opts)
keymap("v", '<leader>(', 'c()<ESC>Pea', opts)
keymap("v", '<leader>[', 'c[]<ESC>Pea', opts)
keymap("v", '<leader>{', 'c{}<ESC>Pea', opts)
keymap("v", '<leader><', 'c<><ESC>Pea', opts)

-- Selection
keymap("n", "<C-S-A>", "ggVG", opts)
