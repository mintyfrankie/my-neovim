local packer = require('packer')

packer.startup(
    function(use)
        use('wbthomason/packer.nvim')
        use('shaunsingh/nord.nvim')
        use({'nvim-treesitter/nvim-treesitter', 
            run=':TSUpdate'})
        use({'williamboman/mason.nvim', 
             'williamboman/mason-lspconfig.nvim',
             'neovim/nvim-lspconfig'})
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
