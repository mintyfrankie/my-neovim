-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set local variables
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- Window Management
map('n', 's', '', opt)
map('n', 'sv', ':vsp<CR>', opt)
map('n', 'sh', ':sp<CR>', opt)
map('n', 'sc', '<C-w>c', opt)
map('n', 'so', '<C-w>o', opt)
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)
map('n', '<C-l>', '<C-w>l', opt)

-- Terminal Mode
map('n', '<leader>t', ':sp | terminal<CR>', opt)
map('n', '<leader>vt', ':vsp | terminal<CR>', opt)

-- Visual Mode enhanced

-- Browsing 

-- Bufferline
map('n', '<A-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<A-l>', ':BufferLineCycleNext<CR>', opt)
map('n', '<A-w>', ':bdelete!<CR>', opt)

-- Telescope
map('n', '<A-p>', ':Telescope find_files<CR>', opt)
map('n', '<A-f>', ':Telescope live_grep<CR>', opt)

-- Nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- For writing SML
map('n', '<leader>rs', ':SMLReplStart<CR>', opt)
map('n', '<leader>rr', ':SMLReplStop<CR>', opt)
