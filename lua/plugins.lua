local packer = require('packer')

packer.startup(
    function(use)
        use 'wbthomason/packer.nvim'
        -- Themes
        use 'shaunsingh/nord.nvim'
        use 'folke/tokyonight.nvim'
        -- Treesitter
        use {'nvim-treesitter/nvim-treesitter',
            run=':TSUpdate'}
        -- Bufferline
        use {'akinsho/bufferline.nvim',
            tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
        -- Telescrope
        use {'nvim-telescope/telescope.nvim',
            tag = '0.1.1', requires = 'nvim-lua/plenary.nvim'}
        -- Nvim-tree
        use {'nvim-tree/nvim-tree.lua',
            requires = 'nvim-tree/nvim-web-devicons'}
        -- Lualine
        use {'nvim-lualine/lualine.nvim',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}}
        -- Dashboard-vim
        use {'glepnir/dashboard-nvim',
            requires = {'nvim-tree/nvim-web-devicons'}}
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
