return {
  'sudo-tee/opencode.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'MeanderingProgrammer/render-markdown.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('opencode').setup {
      preferred_picker = 'telescope',
      preferred_completion = 'nvim-cmp',
      default_global_keymaps = true,
      default_mode = 'build',
      keymap_prefix = '<leader>o',

      keymap = {
        editor = {
          ['<leader>og'] = { 'toggle' },
          ['<leader>oi'] = { 'open_input' },
          ['<leader>oI'] = { 'open_input_new_session' },
          ['<leader>oo'] = { 'open_output' },
          ['<leader>ot'] = { 'toggle_focus' },
          ['<leader>oq'] = { 'close' },
          ['<leader>os'] = { 'select_session' },
          ['<leader>op'] = { 'configure_provider' },
          ['<leader>od'] = { 'diff_open' },
          ['<leader>o]'] = { 'diff_next' },
          ['<leader>o['] = { 'diff_prev' },
          ['<leader>oc'] = { 'diff_close' },
          ['<leader>ora'] = { 'diff_revert_all_last_prompt' },
          ['<leader>ort'] = { 'diff_revert_this_last_prompt' },
          ['<leader>orA'] = { 'diff_revert_all' },
          ['<leader>orT'] = { 'diff_revert_this' },
          ['<leader>ox'] = { 'swap_position' },
          ['<leader>opa'] = { 'permission_accept' },
          ['<leader>opA'] = { 'permission_accept_all' },
          ['<leader>opd'] = { 'permission_deny' },
        },
        input_window = {
          ['<cr>'] = { 'submit_input_prompt', mode = { 'n', 'i' } },
          ['<esc>'] = { 'close' },
          ['<C-c>'] = { 'stop' },
          ['~'] = { 'mention_file', mode = 'i' },
          ['@'] = { 'mention', mode = 'i' },
          ['/'] = { 'slash_commands', mode = 'i' },
          ['<tab>'] = { 'toggle_pane', mode = { 'n', 'i' } },
          ['<up>'] = { 'prev_prompt_history', mode = { 'n', 'i' } },
          ['<down>'] = { 'next_prompt_history', mode = { 'n', 'i' } },
          ['<M-m>'] = { 'switch_mode' },
        },
        output_window = {
          ['<esc>'] = { 'close' },
          ['<C-c>'] = { 'stop' },
          [']]'] = { 'next_message' },
          ['[['] = { 'prev_message' },
          ['<tab>'] = { 'toggle_pane', mode = { 'n', 'i' } },
          ['i'] = { 'focus_input', 'n' },
          ['<leader>oS'] = { 'select_child_session' },
        },
        permission = {
          accept = 'a',
          accept_all = 'A',
          deny = 'd',
        },
      },

      ui = {
        position = 'right',
        input_position = 'bottom',
        window_width = 0.40,
        input_height = 0.15,
        display_model = true,
        display_context_size = true,
        display_cost = true,
        icons = {
          preset = 'emoji',
        },
      },

      context = {
        enabled = true,
        cursor_data = {
          enabled = false,
        },
        diagnostics = {
          info = false,
          warn = true,
          error = true,
        },
        current_file = {
          enabled = true,
        },
        selection = {
          enabled = true,
        },
      },

      debug = {
        enabled = false,
      },
    }
  end,
}

