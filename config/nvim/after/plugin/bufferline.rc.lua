local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "buffers",
    separator_style = 'thick',  -- change: slant, thick, thin
        offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree Filesystem",
                    highlight = "Directory",
                    text_align = "left"
                }
            },
    indicator = {
      style = 'icon',  -- icon | underline |
    },
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
  },
})
