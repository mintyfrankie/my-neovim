local colorscheme = 'nord'

-- error-catching loading
local status_ok, = pcall(vim.cmd, 'colorscheme' .. colorscheme)
if not status_ok then
    vim.notify('Colorscheme <' .. colorscheme .. '> not loaded. Recheck.')
    return
end
