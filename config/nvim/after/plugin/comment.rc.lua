local status, comment = pcall(require, "Comment")
if (not status) then return end

comment.setup {
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
            line = '<leader>cc',
            block = '<leader>bc',
        },
        opleader = {
            line = '<leader>c',
            block = '<leader>b',
        },
        extra = {
            above = 'gcO', 
            below = 'gco',
            eol = 'gcA',
        },
        mappings = {
            basic = true,
            extra = true,
        },
        pre_hook = nil,
        post_hook = nil,
}

