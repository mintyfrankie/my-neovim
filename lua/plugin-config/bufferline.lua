local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
    vim.notify('<Bufferline> not found')
    return
end

bufferline.setup({
    options = {
        close_command = 'bdelete! %d',
        right_mouse_command = 'bdelete! %d',
        offsets = {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = 'left'
        },
        
        
    }
})
