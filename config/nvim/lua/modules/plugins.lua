local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins list
return packer.startup(function(use)

  -- plugin manager
  use{ "wbthomason/packer.nvim" }
  -- stdlib
  use{ "nvim-lua/plenary.nvim" }
  -- treesitter  -- (before this on fedora install tree-sitter-cli and )
  use { 'nvim-treesitter/nvim-treesitter', run = function() require('nvim-treesitter.install').update({ with_sync = true }) end, }
  use { 'nvim-treesitter/nvim-treesitter-refactor' }
  use { 'nvim-treesitter/nvim-treesitter-context' }
  -- Dashboard
  use { 'glepnir/dashboard-nvim' }
  -- Icon
  use { 'kyazdani42/nvim-web-devicons' }
  -- Neo-tree
  use { 'nvim-neo-tree/neo-tree.nvim', requires =  'MunifTanjim/nui.nvim' }
  -- Lualine
  use { 'nvim-lualine/lualine.nvim' }
  -- Bufferline
  use { 'akinsho/nvim-bufferline.lua' }
  -- Indentline
  use { 'lukas-reineke/indent-blankline.nvim' }
  -- Colorizer
  use { 'NvChad/nvim-colorizer.lua' }
  -- Colorscheme
  use { 'themercorp/themer.lua' }
  -- autopairs
  use { 'windwp/nvim-autopairs' }
  use { 'windwp/nvim-ts-autotag' }
  -- comment
  use { 'numToStr/Comment.nvim' }
  -- # Toggle terminal
  use { 'akinsho/toggleterm.nvim' }
  -- LSP
  use { 'neovim/nvim-lspconfig' }
  use { 'onsails/lspkind.nvim' }
  use { 'williamboman/mason.nvim' }
  --use { 'williamboman/mason-lspconfig.nvim' }
  --use { 'jose-elias-alvarez/null-ls.nvim' }
  --use { 'glepnir/lspsaga.nvim' }
  --use { 'MunifTanjim/prettier.nvim' }
  -- Snippet
  use { 'L3MON4D3/LuaSnip' }
  -- Completions
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  -- Telescope
  use { 'nvim-telescope/telescope.nvim' }
  use { 'nvim-telescope/telescope-file-browser.nvim' }

  -- # Git
  use { 'dinhhuy258/git.nvim' }
  use { 'lewis6991/gitsigns.nvim' }
 
  -- # zen-mode
  use { 'folke/zen-mode.nvim' }

  -- # markdown preview
  --use{ "iamcco/markdown-preview.nvim" }
end)
