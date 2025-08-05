vim.pack.add({'https://github.com/neovim/nvim-lspconfig'})
vim.lsp.enable({'bashls', 'lua_ls', 'pyright', 'ts_ls'})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end
})

vim.diagnostic.config({
    virtual_text = {
        current_line = true
    }
})
