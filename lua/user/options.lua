-- https://dougblack.io/words/a-good-vimrc.html

-- Colors, colorscheme in colorscheme.lua
vim.opt.termguicolors = true

-- Spaces and Tabs
vim.opt.tabstop = 2				-- number of visual spaces per TAB
vim.opt.softtabstop = 2				-- number of spaces in tab when editing
vim.opt.expandtab = true			-- tabs are spaces
vim.opt.smartindent = true    -- smart indent for vim
vim.opt.shiftwidth = 2     -- the number of spaces for each identation

-- UI Layout
vim.opt.number = true				-- show line numbers
vim.opt.relativenumber = true			-- show relative line numbers
vim.opt.cursorline = true			-- highlight current line
vim.opt.ruler = true				-- shows column/row number
vim.opt.wrap =  true				-- word wrap without line breaks
vim.opt.scrolloff = 8				-- number of lines above and below cursor
vim.opt.colorcolumn = "80,100,120"		-- ruler color column

-- Searching
vim.opt.incsearch = true    -- search as characters are entered
vim.opt.hlsearch = true     -- highlight search matches
vim.opt.ignorecase = true    -- ignore case when searching

-- Misc
vim.opt.history = 1000    -- recall last thousand commands instead of default 20
vim.opt.mouse = "a"    -- enables use of mouse. Highlighting with mouse goes to visual mode, and is able to copy text to clipboard
vim.opt.splitright = true    -- force all vertical splits to go to right of current window
vim.opt.splitbelow = true    -- force all horizontal splits to go below current window
vim.opt.clipboard = "unnamedplus"     -- allows neowim to access the system clipboard
vim.opt.backup = false    -- creates a backup file
vim.opt.cmdheight = 2    -- more space in the neovim command line for displaying messages
vim.opt.fileencoding = "utf-8"    -- the encoding written to a file
vim.opt.pumheight = 10    -- popup menu height
vim.opt.writebackup = false    -- if a file is being edited by another program (or was written to file when editing with another program), it is not allowed to be edited

