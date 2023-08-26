vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("user.options")
require("user.keymaps")
require("user.plugins")
vim.cmd "colorscheme habamax"
require("user.cmp")
require("user.lsp")

require("nvim-tree").setup({
    disable_netrw = true, -- completely disable netrw
    hijack_cursor = true, -- keeps the cursor on the first letter of the filename when moving in the tree
    sync_root_with_cwd = true, -- changes the tree root directory on 'DirChanged' and refreshes the tree
    update_focused_file = { -- update the focused file on 'BufEnter', un-collapses the folders recursively until it finds the file
        enable = true,
        update_root = true, -- update the rood directory of the tree if the file is not under current root directory
        ignore_list = {}, -- list of buffer names and filetypes that will not update the root dir of the tree if the file isn't found under the current root directory
    },
    diagnostics = { -- show LSP and COC diagnostics in the signcolumn
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500, -- kills the git process after some time if it takes too long
    },
    modified = { -- indicate which files have unsaved modifications
        enable = true,
    }
})
