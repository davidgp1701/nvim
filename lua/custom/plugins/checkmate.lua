return {
  {
    'bngarren/checkmate.nvim',
    -- keys = {
    --   ['<leader>tt'] = {
    --     rhs = '<cmd>Checkmate toggle<CR>',
    --     desc = 'Toggle todo item',
    --     modes = { 'n', 'v' },
    --   },
    --   ['<leader>tc'] = {
    --     rhs = '<cmd>Checkmate check<CR>',
    --     desc = 'Set todo item as checked (done)',
    --     modes = { 'n', 'v' },
    --   },
    --   ['<leader>tu'] = {
    --     rhs = '<cmd>Checkmate uncheck<CR>',
    --     desc = 'Set todo item as unchecked (not done)',
    --     modes = { 'n', 'v' },
    --   },
    --   ['<leader>T='] = {
    --     rhs = '<cmd>Checkmate cycle_next<CR>',
    --     desc = 'Cycle todo item(s) to the next state',
    --     modes = { 'n', 'v' },
    --   },
    --   ['<leader>T-'] = {
    --     rhs = '<cmd>Checkmate cycle_previous<CR>',
    --     desc = 'Cycle todo item(s) to the previous state',
    --     modes = { 'n', 'v' },
    --   },
    --   ['<leader>tn'] = {
    --     rhs = '<cmd>Checkmate create<CR>',
    --     desc = 'Create todo item',
    --     modes = { 'n', 'v' },
    --   },
    --   ['<leader>TR'] = {
    --     rhs = '<cmd>Checkmate remove_all_metadata<CR>',
    --     desc = 'Remove all metadata from a todo item',
    --     modes = { 'n', 'v' },
    --   },
    --   ['<leader>ta'] = {
    --     rhs = '<cmd>Checkmate archive<CR>',
    --     desc = 'Archive checked/completed todo items (move to bottom section)',
    --     modes = { 'n' },
    --   },
    --   ['<leader>Tv'] = {
    --     rhs = '<cmd>Checkmate metadata select_value<CR>',
    --     desc = 'Update the value of a metadata tag under the cursor',
    --     modes = { 'n' },
    --   },
    --   ['<leader>T]'] = {
    --     rhs = '<cmd>Checkmate metadata jump_next<CR>',
    --     desc = 'Move cursor to next metadata tag',
    --     modes = { 'n' },
    --   },
    --   ['<leader>T['] = {
    --     rhs = '<cmd>Checkmate metadata jump_previous<CR>',
    --     desc = 'Move cursor to previous metadata tag',
    --     modes = { 'n' },
    --   },
    -- },
    opts = {
      -- keys = {
      --   ['<leader>tt'] = 'toggle', -- Toggle todo item
      --   ['<leader>tc'] = 'check', -- Set todo item as checked (done)
      --   ['<leader>tu'] = 'uncheck', -- Set todo item as unchecked (not done)
      --   ['<leader>tn'] = 'create', -- Create todo item
      --   ['<leader>tr'] = 'remove_all_metadata', -- Remove all metadata from a todo item
      --   ['<leader>ta'] = 'archive', -- Archive checked/completed todo items (move to bottom section)
      -- },
      metadata = {
        priority = {
          -- Dynamic styling based on the tag's current value
          style = function(value)
            local value = value:lower()
            if value == 'high' then
              return { fg = '#ff5555', bold = true }
            elseif value == 'medium' then
              return { fg = '#ffb86c' }
            elseif value == 'low' then
              return { fg = '#8be9fd' }
            else -- fallback
              return { fg = '#8be9fd' }
            end
          end,
          get_value = function()
            return 'medium'
          end, -- Default value
          key = '<leader>tp', -- Keymap to toggle
          sort_order = 10, -- Order when multiple tags exist (lower comes first)
          jump_to_on_insert = 'value', -- Move the cursor after insertion
          select_on_insert = true, -- Select the 'value' (visual mode) on insert
        },
        started = {
          aliases = { 'init' },
          style = { fg = '#9fd6d5' },
          get_value = function()
            return tostring(os.date '%m/%d/%y %H:%M')
          end,
          key = '<leader>ts',
          sort_order = 20,
        },
        done = {
          aliases = { 'completed', 'finished' },
          style = { fg = '#96de7a' },
          get_value = function()
            return tostring(os.date '%m/%d/%y %H:%M')
          end,
          key = '<leader>td',
          on_add = function(todo_item)
            require('checkmate').set_todo_item(todo_item, 'checked')
          end,
          on_remove = function(todo_item)
            require('checkmate').set_todo_item(todo_item, 'unchecked')
          end,
          sort_order = 30,
        },
      },
    },
  },
}
