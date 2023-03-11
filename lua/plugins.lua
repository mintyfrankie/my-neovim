local packer = require('packer')

packer.startup(
    function(use)
        use 'wbthomason/packer.nvim'
        -- Themes
        use 'shaunsingh/nord.nvim'
        -- Treesitter
        use {'nvim-treesitter/nvim-treesitter',
            run=':TSUpdate'}
        -- Bufferline
        use {'akinsho/bufferline.nvim',
            tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
        -- Telescope
        use {'nvim-telescope/telescope.nvim',
            tag = '0.1.1', requires = 'nvim-lua/plenary.nvim'}
        -- Nvim-tree
        use {'nvim-tree/nvim-tree.lua',
            requires = 'nvim-tree/nvim-web-devicons'}
        -- Lualine
        use {'nvim-lualine/lualine.nvim',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}}
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
