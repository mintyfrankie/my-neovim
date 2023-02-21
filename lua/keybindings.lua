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
map('n', '<A-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<A-l>', ':BufferLineCycleNext<CR>', opt)
map('n', '<A-w>', ':Bdelete!<CR>', opt)

-- Telescope
map('n', '<A-p>', ':Telescope find_files<CR>', opt)
map('n', '<A-f>', ':Telescope live_grep<CR>', opt)

-- Nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

