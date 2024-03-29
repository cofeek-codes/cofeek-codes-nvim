-- local keymap = vim.api.nvim_set_keymap
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "x", '"_x', opts)

-- Increment/decrement
map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)
-- save
-- map('n', '<C-S>', ':Prettier<Enter>:w<Enter>', opts)
map("n", "<C-S>", ":w<Enter>", opts)

-- force quit
map("n", "qq", ":q!<Enter>", opts)
-- save and quit
map("n", "sq", ":wq<Enter>", opts)
-- quick insert-normal
map("n", "<C-]>", "i", opts)
map("n", "<C-Space>", "<C-N>", opts)

map("n", "<C-t>", ":Neotree toggle<Enter>", opts)
-- Delete a word backwards
map("n", "dw", 'vb"_d', opts)

-- Select all
map("n", "<C-a>", "gg<S-v>G", opts)
-- Undo
map("n", "<C-z>", "u", opts)

-- map('n', '<C-s>', ':Prettier<Enter>', opts)

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
map("n", "te", ":tabedit<Return>", opts)

-- Split window
map("n", "ss", ":split<Return><C-w>w", opts)
map("n", "sv", ":vsplit<Return><C-w>w", opts)
-- Move window
map("n", "<Space>", "<C-w>w", opts)
map("", "sh", "<C-w>h", opts)
map("", "sk", "<C-w>k", opts)
map("", "sj", "<C-w>j", opts)
map("", "sl", "<C-w>l", opts)

-- Resize window
map("n", "<C-w><left>", "<C-w><", opts)
map("n", "<C-w><right>", "<C-w>>", opts)
map("n", "<C-w><up>", "<C-w>+", opts)
map("n", "<C-w><down>", "<C-w>-", opts)

-- Move highlited lines

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center view after jupms

vim.keymap.set("n", "<Ctrl-d>", "<Ctrl-d>zz")
vim.keymap.set("n", "<Ctrl-u>", "<Ctrl-u>zz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

-- gitsigns menu
vim.keymap.set("n", "<C-g>", "<cmd>Gitsigns<CR>")

-- copy to clipboard

vim.keymap.set({ "n", "v" }, "cc", [["+y]])
