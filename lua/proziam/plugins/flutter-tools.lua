-- https://medium.com/indian-coder/supercharge-flutter-with-neovim-a-complete-setup-guide-cbe5cbf5b073
return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    require('flutter-tools').setup {}
  end,
}
