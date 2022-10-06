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

-- split
map('n', '<leader>v', ':vsplit<CR>')

-- Buffer
--map("n", "<leader>vn", ":vnew<CR>")         -- new vertical buffer
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")
map("n", "<leader>wq", "<cmd>bdelete!<CR>") -- close buffer

-- Clear highlights
map("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- Save file
map("n", "<C-w>", '<ESC>:update<CR>')

-- Close neovim
map('n', '<leader>qq', '<ESC>:quit<CR>')

-- ###################################
-- #####      Plugins keymap     #####
-- ###################################

-- neo-tree
map('n', '<leader>e', ':NeoTreeRevealToggle<CR>')
--map('n', '<leader>E', ':NeoTree<CR>')

-- zen mode
map('n', '<leader>z', ':ZenMode<CR>')
