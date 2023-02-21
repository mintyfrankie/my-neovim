-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set local variables
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- Window Management
map('n', 's', '', opt)

-- Terminal Mode

-- Visual Mode enhanced

-- Browsing 

-- Bufferline
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)
map('n', '<C-w>', ':Bdelete!<CR>', opt)

-- Telescope
map('n', '<C-p>', ':Telescope find_files<CR>', opt)
map('n', '<C-f>', ':Telescope live_grep<CR>', opt)

-- Nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

