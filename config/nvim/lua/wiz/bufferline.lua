require('bufferline').setup{
  options = {
    mode = "buffers",
    separator_style = 'thick',
    offsets = { { filetype = "NvimTree",
                  text = "File Explorer",
                  text_align = 'left',
                  highlight = "Directory",
                  separator = true } },
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = false,
    close_command = "bdelete! %d",
    color_icons = true,
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#073642',
    },
    separator_selected = {
      fg = '#073642',
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
      --undercurl = true,
      underline = true,
      sp = '#fdf6e3'
    },
    fill = {
      bg = '#073642',
    },  
  }, 
}
