local status, indentline = pcall(require, 'indent_blankline')
if (not status) then return end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

indentline.setup {
  space_char_blankline = " ",
  show_current_context = true,

}
