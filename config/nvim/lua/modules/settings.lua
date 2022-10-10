local opt = vim.opt
local cmd = vim.api.nvim_command

vim.scriptencoding = 'utf-8'                --
opt.encoding = 'utf-8'                      -- the encoding written to a file
opt.fileencoding = 'utf-8'                  --

opt.backup = false                          -- creates a backup file
opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.swapfile = false                        -- creates a swapfile

opt.title = true                            -- 
opt.number = true                           -- set numbered lines

opt.hlsearch = true                         -- highlight all matches on previous search pattern
opt.ignorecase = true                       -- ignore case in search patterns
opt.smartcase = true                        -- smart case

opt.mouse = "a"                             -- allow the mouse to be used
opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
opt.showcmd = true                          -- 
opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
opt.laststatus = 3                          --

opt.wrap = false                            -- no wrap lines
opt.ai = true                               -- auto indent
opt.si = true                               -- smart Indent
opt.smarttab = true                         -- 
opt.expandtab = true                        -- convert tabs to spaces
opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
opt.scrolloff = 10                          -- 

opt.undofile = true                     -- enable persistent undo
opt.conceallevel = 0                    -- so that `` is visible in markdown files
opt.pumheight = 10                      -- pop up menu height
opt.updatetime = 300                    -- faster completion (4000ms default)
opt.shell = 'zsh'                           -- 
opt.path:append { '**' }                    -- Finding files - Search down into subfolders
opt.backspace = { 'start', 'eol', 'indent' }
opt.wildignore:append { '*/node_modules/*' }

-- Hightlight
opt.cursorline = true
opt.termguicolors = true
opt.guicursor = 'a:block'
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5
-- opt.background = 'dark'

-- Undercurl
cmd([[let &t_Cs = "\e[4:3m"]])
cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   pattern = '*',
--   command = "set nopaste"
-- })

-- Add asterisks in block comments
-- opt.formatoptions:append { 'r' }


--vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
--vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
--vim.opt.showtabline = 0                         -- always show tabs
--vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
--vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
--vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
--vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)

--vim.opt.ruler = false
--vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
--vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
--vim.opt.sidescrolloff = 8
--vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
--vim.opt.fillchars.eob=" "
--vim.opt.shortmess:append "c"
--vim.opt.whichwrap:append("<,>,[,],h,l")
--vim.opt.iskeyword:append("-")
