local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
    vim.notify('<Telescope> not found.')
    return
end

telescope.setup({
    defaults = {
        initial_mode = 'normal'
    },
    pickers = {
    
    }
})
