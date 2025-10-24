return {
  'sudo-tee/opencode.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'MeanderingProgrammer/render-markdown.nvim',
  },
  config = function()
    require('opencode').setup {}

    vim.keymap.set('n', '<leader>oc', ':Opencode<CR>', { desc = '[O]pen[c]ode' })
    vim.keymap.set('v', '<leader>oc', ':Opencode<CR>', { desc = '[O]pen[c]ode with selection' })
  end,
}

