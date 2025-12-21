--- VIM KEYMAPS
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>ws', '<cmd>vsplit<CR>', { desc = 'Split window to the right' })
vim.keymap.set('n', '<S-Tab>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<Tab>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-a>', 'ggVG$', { desc = 'Mark everything' })
---vim.keymap.set('n', '<TAB>', '<cmd>tabnext<CR>', { desc = 'Next tab' })
---vim.keymap.set('n', '<S-TAB>', '<cmd>tabprevious<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<leader>e', '<cmd>:Explore<CR>', { desc = 'Open [E]xplorer' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
