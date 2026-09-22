return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      style = 'moon',

      on_colors = function(colors)
        colors.fg_gutter = '#505878'
      end,
    },

    --   config = function()
    --     require('tokyonight').setup {
    --       on_highlights = function(hl, colors)
    --         hl.LineNr = {
    --           fg = colors.yellow,
    --         }
    --         hl.CursorLineNr = {
    --           fg = colors.yellow,
    --         }
    --       end,
    --     }
    --   end,
  },
}
