return {
  'A7Lavinraj/fyler.nvim',
  dependencies = 'echasnovski/mini.icons',
  cmd = { 'Fyler' },
  keys = {
    {
      '<Leader>e',
      '<CMD>Fyler kind=split_left_most<CR>',
      desc = 'Open Fyler',
    },
  },
  opts = {
    mappings = {
      explorer = {
        ['<Leader>e'] = 'CloseView',
      },
    },
    views = {
      explorer = {
        close_on_select = false,
        confirm_simple = true,
        default_explorer = true,
        win = {
          -- kind_presets = {
          --   split_left_most = {
          --     width = '0.15rel',
          --   },
          -- },
          win_opts = {
            number = true,
            relativenumber = true,
          },
        },
      },
    },
  },
}
