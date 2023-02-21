local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
    vim.notify('<Nvim-tree> not found.')
    return
end

nvim_tree.setup({
    git = {enable = false},
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true
        },
    filters = {
        dotfiles = true
        },
    view = {
        width = 40,
        side = 'left',
        hide_root_folder = false,
        mappings = {
            custom_only = false,
            list = list_keys
        },
        number = false,
        relativenumber = false,
        signcolumn = 'yes'
        },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = true
            }
    }
})

-- Vim specific configs
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Autoclose
vim.cmd(
    [[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
    ]])
