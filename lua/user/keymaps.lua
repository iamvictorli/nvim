-- https://www.youtube.com/watch?v=hSHATqh8svM
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- -- Navigate buffers
-- keymap("n", "<leader>b", ":bnext<CR>", opts)
-- keymap("n", "<leader>B", ":bprevious<CR>", opts)

-- Movement
keymap("n", "j", "gj", opts)     -- moves cursor down by visual line
keymap("n", "k", "gk", opts)     -- moves cursor up by visual line
keymap("n", "gV", "`[v`]", opts)    -- highlights last inserted text

-- buffer management
keymap("n", "<C-u>", ":bprevious<CR>", opts)
keymap("n", "<C-o>", ":bnext<CR>", opts)
keymap("n", "<leader>c", "<C-w>c", opts)

-- Special remaps
keymap("n", "Y", "y$", opts)    -- yank the rest of the line
keymap("n", "n", "nzzzv", opts)    -- keeps cursor centered when using "n"
keymap("n", "N", "Nzzzv", opts)    -- keeps cursor centered when using "N"
keymap("n", "J", "mzJ`z", opts)    -- appends next line to current cursor line
keymap("n", "<leader>y", "+y", opts)    -- yank to system clipboard
keymap("n", "<leader>Y", "gg+yG", opts)    -- yank entire file to system clipboard

-- Telescope
keymap("n", "<leader>sf", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>st", "<cmd>Telescope live_grep<cr>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

-- Visual --
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)    -- moving texts down in visual mode
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)    -- moving texts up in visual mode
keymap("v", "<leader>y", "+y", opts)    -- yank to system clipboard
keymap("v", "<", "<gv", opts)    -- indent
keymap("v", ">", ">gv", opts)    -- indent

-- Visual Block --
keymap("x", "<leader>p", "_dP", opts)    -- pasting text does not override register

-- undo breakpoints on insert mode
-- vim.cmd("inoremap , ,<c-g>u")
-- vim.cmd("inoremap . .<c-g>u")
-- vim.cmd("inoremap ! !<c-g>u")
-- vim.cmd("inoremap ? ?<c-g>u")
