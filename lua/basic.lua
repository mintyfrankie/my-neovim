-- UTF8 Encoding
vim.g.encoding = 'UTF-8'
vim.o.fileencoding = 'utf-8'

-- Tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- Identation
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.wo.wrap = true
vim.o.whichwrap = '<,>,[,]'

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Autosave & Backup
vim.o.autoread = true
vim.bo.autoread = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- Timing
vim.o.timeoutlen = 500
vim.o.updatetime = 300

-- Autocompletion
vim.g.completeopt = 'menu,menuone,noselect,noinsert'
vim.o.wildmenu = true
vim.o.pumheight = 10

-- Style & Display behaviour
vim.o.scrolloff = 10
vim.sidescrolloff = 8
vim.wo.signcolumn = 'yes'
vim.o.cmdheight = 1
vim.o.hidden = true
vim.o.mouse = 'a'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.showtabline = 2
vim.o.showmode = true
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.opt.termguicolors = true
