local status_ok, dashboard = pcall(require, 'dashboard')
if not status_ok then
    vim.notify('<Dashboard> not found.')
    return
end

dashboard.setup({
  theme = 'doom',
  config = {
    header = {'Neovim'}, --your header
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
      {
        icon = ' ',
        desc = 'Find Dotfiles',
        key = 'f',
        keymap = 'SPC f d',
        action = 'lua print(3)'
      },
    },
    footer = {'Proudly curated by minty'}  --your footer
  }
})
