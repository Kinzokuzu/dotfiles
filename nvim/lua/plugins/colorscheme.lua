return {
	--[[
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({ style = "pro" })
			vim.cmd.colorscheme "monokai-pro"
		end
	}
	--]]
	{
		"navarasu/onedark.nvim",
		config = function ()
			require('onedark').setup({
				style = 'dark'
			})
			vim.cmd.colorscheme "onedark"
		end
	}
}
