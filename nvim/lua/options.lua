local options = {
    -- Basic settings
	number = true,
	relativenumber = true,
	cursorline = true,
    -- colorcolumn = '88',
	wrap = false,
	-- Indentation
	tabstop = 4,
	shiftwidth = 4,
	softtabstop = 4,
	expandtab = true,
	smartindent = true,
	autoindent = true,
    -- Search settings
    ignorecase = true,
    smartcase = true,
    -- Visual settings
	termguicolors = true,
	showmode = false,
	signcolumn = 'yes',
    winborder = 'rounded',
    -- File handling
    backup = false,
    swapfile = false,
    undofile = true,
    undodir = vim.fn.expand('~/.vim/undodir'),
    autoread = true,
    -- Other
    mouse = 'a',
    clipboard = 'unnamedplus',
    pumheight = 10,
    splitbelow = true,
    splitright = true
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand('~/.vim/undodir')
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, 'p')
end
