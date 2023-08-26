vim.keymap.set("n", "<C-E>", ":NvimTreeToggle<cr>") -- toggle Nvim-Tree with control e

vim.keymap.set("i", "{", "{}<Esc>ha") -- auto close brackets
vim.keymap.set("i", "(", "()<Esc>ha") -- auto close parenthesis 
vim.keymap.set("i", "[", "[]<Esc>ha") -- auto close square brackets 
vim.keymap.set("i", "\"", "\"\"<Esc>ha") -- auto close double quotes
vim.keymap.set("i", "\'", "\'\'<Esc>ha") -- auto close single quotes
