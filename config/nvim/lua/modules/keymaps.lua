local map = function(mode, l, r, opts)
  opts = opts or {}
  opts.silent = true
  vim.keymap.set(mode, l, r, opts)
end

-- ###################################
-- #####      Default keymap     #####
-- ###################################

-- Set Leader
map("","<Space>", "<Nop>")
vim.g.mapleader = " "

-- Move window
map("", "<A-a>", "<C-w>h")
map("", "<A-w>", "<C-w>k")
map("", "<A-s>", "<C-w>j")
map("", "<A-d>", "<C-w>l")

-- resize window 
map("n", "<A-k>", [[<cmd>resize -2<CR>]])
map("n", "<A-j>", [[<cmd>resize +2<CR>]])
map("n", "<A-h>", [[<cmd>vertical resize +2<CR>]])
map("n", "<A-l>", [[<cmd>vertical resize -2<CR>]])

-- Buffer
map("n", "<leader>v", ":vnew<CR>")         -- new vertical buffer
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")
map("n", "<leader>q", "<cmd>bdelete!<CR>") -- close buffer

-- Clear highlights
map("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- Save file
map("n", "<C-w>", '<ESC>:update<CR>')

-- Exit neovim
map('n', '<C-q>', '<ESC>:quit<CR>')

-- ###################################
-- #####      Plugins keymap     #####
-- ###################################

-- Neo-tree
map('n', '<Leader>e', ':NeoTreeFloatToggle<CR>')
