local status, neo_tree = pcall(require, "neo-tree")
if (not status) then return end

neo_tree.setup {
  filesystem = {
    window = {
      popup = {
        position = { col = "100%", row = "2" },
        size = function(state)
          local root_name = vim.fn.fnamemodify(state.path, ":~")
          local root_len = string.len(root_name) + 4
          return {
            width = math.max(root_len, 40),
            height = vim.o.lines - 6
          }
        end
      },
      mappings = {
        ['o'] = 'system_open',
      },
    },
    commands = {
      system_open = function(state)
        local node = state.tree:get_node()
        local path = node:get_id()
        -- macOs: open file in default application in the background.
        -- Probably you need to adapt the Linux recipe for manage path with spaces. I don't have a mac to try.
        vim.api.nvim_command("silent !open -g " .. path)
        -- Linux: open file in default application
        vim.api.nvim_command(string.format("silent !xdg-open '%s'", path))
      end,
    },
  },
  cwd_target = {
          sidebar = "tab",   -- sidebar is when position = left or right
          current = "window" -- current is when position = current
        },
  default_component_configs = {
    git_status = {
      symbols = {
        added = "✚",
        modified = "⏺",
      },
      align = "right",
    },
    modified = {
      symbol = "⏺",
    },
  },
  enable_diagnostics = true,
  enable_git_status = true,
  event_handlers = {
    {
      event = "neo_tree_buffer_enter",
      handler = function()
        vim.cmd 'highlight! Cursor blend=100'
      end
    },
    {
      event = "neo_tree_buffer_leave",
      handler = function()
        vim.cmd 'highlight! Cursor guibg=#5f87af blend=0'
      end
    }
  },
  close_if_last_window = true,
  sort_case_insensitive = true,
  use_libuv_file_watcher = true,

  window = {
     width = 28,
   },

}
-- neo_tree.setup {
--   close_if_last_window = true,
--   default_component_configs = {
--     git_status = {
--       symbols = {
--         added = "✚",
--         modified = "⏺",
--       },
--       align = "right",
--     },
--     modified = {
--       symbol = "⏺",
--     },
--   },
--   enable_diagnostics = true,
--   enable_git_status = true,
--   event_handlers = {
--     {
--       event = "neo_tree_buffer_enter",
--       handler = function()
--         vim.cmd("set cursorlineopt=both")
--         vim.cmd("hi Cursor blend=100")
--       end,
--     },
--     {
--       event = "neo_tree_buffer_leave",
--       handler = function()
--         vim.cmd("hi Cursor blend=0")
--         vim.cmd("set cursorlineopt=number")
--       end,
--     },
--   },
--   filesystem = {
--     hijack_netrw_behavior = "disabled",
--     filtered_items = {
--       hide_by_name = {
--         "node_modules",
--         "__pycache__",
--       },
--     },
--   },
--   popup_border_style = "double",
--   sort_case_insensitive = true,
--   use_libuv_file_watcher = true,
--   window = {
--     mappings = {
--     },
--     width = 30,
--   },
-- }

vim.cmd([[
highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
highlight! link NeoTreeDirectoryName NvimTreeFolderName
highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
highlight! link NeoTreeRootName NvimTreeRootFolder
highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
]])
