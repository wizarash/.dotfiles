local status, telescope = pcall(require, "telescope")
if (not status) then return end

telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        --["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    live_grep = {
      theme = 'ivy',
    },
    oldfiles = {
      theme = 'ivy',
    },
    find_files = {
      theme = "ivy",
    },
  },

  extensions = {
    file_browser = {
      theme = 'ivy',
    },
  }
}

telescope.load_extension "file_browser"
