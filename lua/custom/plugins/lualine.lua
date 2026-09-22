return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'auto', -- or another theme like 'gruvbox', 'tokyonight'
        icons_enabled = true,
      },
    },
  },
}
