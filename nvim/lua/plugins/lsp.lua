return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()

			vim.keymap.set("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

			vim.diagnostic.config({
				virtual_text = false,
				float = {
					focusable = false,
				}
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end
			})
		end
	},
	{
		"neovim/nvim-lspconfig"
	}
}
