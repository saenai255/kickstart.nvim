-- CUSTOM KEYMAPS
vim.keymap.set('n', '<leader>Q', ':q<CR>', { desc = '[Q]uit' })
vim.keymap.set('n', '<leader>S', ':w<CR>', { desc = '[S]ave file' })
vim.keymap.set('n', '<leader>tt', ':Neotree toggle<CR>', { desc = '[T]oggle file [t]ree' })
vim.keymap.set('n', '<leader>]', ':bn<CR>', { desc = 'Go to next buffer' })

vim.keymap.set('n', '<leader>p', '', { desc = '[P]anel' })
vim.keymap.set('n', '<leader>ps', '', { desc = '[P]anel [s]plit' })
vim.keymap.set('n', '<leader>psh', ':horizontal split<CR>', { desc = '[P]anel [s]plit [v]ertical' })
vim.keymap.set('n', '<leader>psv', ':vertical split<CR>', { desc = '[P]anel [s]plit [h]orizontal' })

vim.keymap.set('n', '<leader>pi', '', { desc = '[P]anel [i]ncrease' })
vim.keymap.set('n', '<leader>piv', ':vertical resize +5<CR>', { desc = '[P]anel [i]ncrease [v]ertical size' })
vim.keymap.set('n', '<leader>pih', ':horizontal resize +5<CR>', { desc = '[P]anel [i]ncrease [h]orizontal size' })

vim.keymap.set('n', '<leader>pd', '', { desc = '[P]anel [d]ecrease' })
vim.keymap.set('n', '<leader>pdv', ':vertical resize -5<CR>', { desc = '[P]anel [d]ecrease [v]ertical size' })
vim.keymap.set('n', '<leader>pdh', ':horizontal resize -5<CR>', { desc = '[P]anel [d]ecrease [h]orizontal size' })

vim.keymap.set('n', '<leader>pc', ':close<CR>', { desc = '[P]anel [c]lose' })

vim.keymap.set('n', '|', ':Neotree reveal_force_cwd<CR>', { desc = 'Show current directory' })

vim.keymap.set('n', '<leader>[', ':bp<CR>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>W', ':bd!<CR>', { desc = 'Close current buffer' })
