require('basic')
require('plugins')
require('keybindings')
require('misc')

if not vim.g.vscode then
    require('colorscheme')
    require('plugin-config.nvim-treesitter')
    require('plugin-config.bufferline')
    require('plugin-config.telescope')
    require('plugin-config.nvim-tree')
    require('plugin-config.lualine')
end
