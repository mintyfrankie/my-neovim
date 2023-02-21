local packer = require('packer')

packer.startup(
    function(use)
        use 'wbthomason/packer.nvim'
        use 'shaunsingh/nord.nvim'
        -- Treesitter
        use {'nvim-treesitter/nvim-treesitter', 
            run=':TSUpdate'}
        -- Mason LSP
        use {'williamboman/mason.nvim', 
             'williamboman/mason-lspconfig.nvim',
             'neovim/nvim-lspconfig'}
        -- Bufferline
        use {'akinsho/bufferline.nvim',
            tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
        -- Telescrope
        use {'nvim-telescope/telescope.nvim',
            tag = '0.1.1', requires = 'nvim-lua/plenary.nvim'}
        -- LaTeX Support
        use 'lervag/vimtex'
        -- SML Support
        use('w0rp/ale')
        use('jez/vim-better-sml')
    end
)

-- Let packer.nvim automatic reload after each :w
pcall(
    vim.cmd,
    [[
        augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
        augroup end
    ]]
)
