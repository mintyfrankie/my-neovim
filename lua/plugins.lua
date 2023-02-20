local packer = require('packer')

packer.startup(
    function(use)
        use('wbthomason/packer.nvim')
        use('shaunsingh/nord/nvim')
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
