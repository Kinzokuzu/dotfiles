return {
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({ style = "pro" })
			vim.cmd.colorscheme "monokai-pro"
		end
	}
}
