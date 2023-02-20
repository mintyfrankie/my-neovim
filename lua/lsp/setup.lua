local status, mason = pcall(require, 'mason')
if not status then
    vim.notify('Cannot find <mason>')
    return
end

local status, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not status then
    vim.notify('Cannot find <mason-lspconfig>')
    return
end

mason.setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗'
    }
  }
})

mason_lspconfig.setup({
    ensure_installed = {
        'lua_ls'
    }
})
