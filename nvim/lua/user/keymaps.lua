vim.keymap.set("n", "<`>", "<Nop>", { noremap = true, silent = true } )
vim.g.mapleader = "`"
vim.g.maplocalleader = "`"

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>") -- toggle Nvim-Tree
