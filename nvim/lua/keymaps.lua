vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>e', ':Explore<CR>', { desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', { desc = 'Find file' })
vim.keymap.set('n', '<leader>fg', ':FzfLua live_grep<CR>', { desc = 'Live grep' })
