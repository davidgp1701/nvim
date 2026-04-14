return {
  'serhez/bento.nvim',
  opts = {
    main_keymap = '-',
    ui = {
      floating = {
        position = 'middle-left', -- See position options below
        offset_x = 10, -- Horizontal offset from position
        offset_y = 0, -- Vertical offset from position
        dash_char = '─', -- Character for collapsed dashes
        border = 'double', -- "rounded" | "single" | "double" | etc. (see :h winborder)
      },
    },
  },
}
