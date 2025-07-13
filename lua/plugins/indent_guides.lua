-- lua/plugins/indent-guides.lua
return {
  'lukas-reineke/indent-blankline.nvim',
  -- The 'main' key is required for this plugin
  main = 'ibl',
  -- 'opts' is the same as calling require('ibl').setup({})
  opts = {},
}

-- You can customize the options here. For example:
-- return {
--  'lukas-reineke/indent-blankline.nvim',
--  main = 'ibl',
--  opts = {
--    indent = {
--      char = '│', -- Change the indent character
--      tab_char = '│',
--    },
--    scope = { enabled = false }, -- Disable the line that shows the current scope
--  },
-- }
