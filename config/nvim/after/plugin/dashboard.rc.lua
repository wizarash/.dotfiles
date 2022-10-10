local status, db = pcall(require, 'dashboard')
if (not status) then return end

local nvim = {
' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}
 
db.default_banner = nvim

db.header_pad = 3           -- number type default is 1
db.center_pad = 3           -- number type default is 1
db.footer_pad = 2           -- number type default is 1

db.custom_center = {
  { 
    icon = '⟳  ',
    desc = 'Recently opened files                   ',
    action =  'Telescope oldfiles',
    shortcut = 'SPC r o'
  },
  {
    icon = '⯈  ',
    desc = 'File browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'
  },
  {
    icon = '⹋  ',
    desc = 'Find files                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'
  },
  {
    icon = '⦁  ',
    desc = 'Find words                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'
  },
  { 
    icon = '↲  ',
    desc = 'See keymaps                             ',
    action =  'Telescope keymaps',
    shortcut = 'SPC f k'
  },
  {
    icon = 'x  ',
    desc = 'Close                                   ',
    action = 'quit',
    shortcut = 'SPC q q'
  },
}
