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

-- no wrap
map("n", "<C-z>", ":set nowrap<CR>")

-- Save file
map("n", "<C-w>", '<ESC>:update<CR>')

-- Close neovim
map('n', '<leader>qq', '<ESC>:quit<CR>')

-- ###################################
-- #####      Plugins keymap     #####
-- ###################################

-- neo-tree
map('n', '<leader>E', ':NeoTreeRevealToggle<CR>')
map('n', '<leader>e', ':Neotree float reveal toggle<CR>')

-- zen mode
map('n', '<leader>z', ':ZenMode<CR>')

-- colorizer
--map ('n', '<leader>c' , ':ColorizerToggle<CR>')

-- markdown preview
map('n', '<leader>m' ,':MarkdownPreviewToggle<CR>')

-- telescope
map('n', '<leader>fb', ':Telescope file_browser<CR>')
map('n', '<leader>ff', ':Telescope find_files find_command=rg,--hidden,--files<CR>')
map('n', '<leader>fw', ':Telescope live_grep<CR>')
map('n', '<leader>ro', ':Telescope oldfiles<CR>')
map('n', '<leader>fk', ':Telescope keymaps<CR>')
