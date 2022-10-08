local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  ensure_installed = {
    "lua",
    "html",
    "css",
    "javascript",
  },

  sync_install = true,

auto_install = true,

  highlight = {
    enable = true,
    disable = {},
  },

  indent = {
    enable = true,
    disable = {},
  },

  autotag = {
    enable = true,
  },
}
