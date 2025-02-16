-- CUSTOM KEYMAPS
vim.keymap.set('n', '<leader>Q', ':q<CR>', { desc = '[Q]uit' })
vim.keymap.set('n', '<leader>S', ':w<CR>', { desc = '[S]ave file' })
vim.keymap.set('n', '<leader>tt', ':Neotree toggle<CR>', { desc = '[T]oggle file [t]ree' })
vim.keymap.set('n', '<leader>]', ':bn<CR>', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<leader>[', ':bp<CR>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>W', ':bd!<CR>', { desc = 'Close current buffer' })
