vim.pack.add({'https://github.com/ibhagwan/fzf-lua'})

vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', { desc = 'Find file' })
vim.keymap.set('n', '<leader>fg', ':FzfLua live_grep<CR>', { desc = 'Live grep' })
-- LSP
vim.keymap.set('n', 'gd', ':FzfLua lsp_definitions<CR>', { desc = 'Go to definition' })
vim.keymap.set('n', 'gD', ':FzfLua lsp_declarations<CR>', { desc = 'Go to declaration' })
