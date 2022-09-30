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

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used by lots of plugins
  use 'goolord/alpha-nvim' --  Dashboard
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} 
  use 'windwp/nvim-autopairs' -- Autopairs, integrates with both cmp and treesitter
  use 'ahmedkhalf/project.nvim' -- provides project management
  use 'akinsho/toggleterm.nvim' -- persist and toggle multiple terminals
  -- nvim-tree
  use 'kyazdani42/nvim-tree.lua' -- for file explorer

  -- Telescope
  use 'nvim-telescope/telescope.nvim'

  -- Treesitter
  --use 'nvim-treesitter/nvim-treesitter'
   use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }


    -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
