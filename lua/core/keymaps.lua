local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.keymap.set("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
vim.keymap.set("n", "<C-i>", "<C-i>", opts)

-- Better window navigation
vim.keymap.set("n", "<m-h>", "<C-w>h", opts)
vim.keymap.set("n", "<m-j>", "<C-w>j", opts)
vim.keymap.set("n", "<m-k>", "<C-w>k", opts)
vim.keymap.set("n", "<m-l>", "<C-w>l", opts)
vim.keymap.set("n", "<m-tab>", "<c-6>", opts)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--LSPsaga keymap
vim.keymap.set("n", "<leader>o", ":Lspsaga outline", opts)

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
