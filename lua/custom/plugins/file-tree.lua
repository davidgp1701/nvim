-- return {
--   'A7Lavinraj/fyler.nvim',
--   dependencies = 'echasnovski/mini.icons',
--   cmd = { 'Fyler' },
--   keys = {
--     {
--       '<Leader>e',
--       '<CMD>Fyler kind=split_left_most<CR>',
--       desc = 'Open Fyler',
--     },
--   },
--   opts = {
--     mappings = {
--       explorer = {
--         ['<Leader>e'] = 'CloseView',
--       },
--     },
--     views = {
--       explorer = {
--         close_on_select = false,
--         confirm_simple = true,
--         default_explorer = true,
--         win = {
--           -- kind_presets = {
--           --   split_left_most = {
--           --     width = '0.15rel',
--           --   },
--           -- },
--           win_opts = {
--             number = true,
--             relativenumber = true,
--           },
--         },
--       },
--     },
--   },
-- }

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons', -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
      require('neo-tree').setup {
        filesystem = {
          filtered_items = {
            visible = true, -- when true, they will just be displayed differently than normal items
            hide_gitignored = true,
            hide_ignored = true, -- hide files that are ignored by other gitignore-like files
            hide_dotfiles = false,
          },
        },
      }
      vim.cmd [[nnoremap \ :Neotree reveal<cr>]]
      local keymap = vim.keymap -- for conciseness
      keymap.set('n', '<leader>ee', '<cmd>Neotree toggle<CR>', { desc = 'Toggle file explorer' }) -- toggle file explorer
      keymap.set('n', '<C-n>', '<cmd>Neotree reveal<CR>', { desc = 'Toggle file explorer on current file' }) -- toggle file explorer on current file
    end,
  },
}
