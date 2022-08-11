-- local keymap = vim.api.nvim_set_keymap
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('n', 'x', '"_x', opts)

-- Increment/decrement
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)
-- save
map('n', '<C-S>', ':w<Enter>', opts)

-- Delete a word backwards
map('n', 'dw', 'vb"_d', opts)

-- Select all
map('n', '<C-a>', 'gg<S-v>G', opts)

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
map('n', 'te', ':tabedit', opts)
-- Split window
map('n', 'ss', ':split<Return><C-w>w', opts)
map('n', 'sv', ':vsplit<Return><C-w>w', opts)
-- Move window
map('n', '<Space>', '<C-w>w', opts)
map('', 'sh', '<C-w>h', opts)
map('', 'sk', '<C-w>k', opts)
map('', 'sj', '<C-w>j', opts)
map('', 'sl', '<C-w>l', opts)

-- Resize window
map('n', '<C-w><left>', '<C-w><', opts)
map('n', '<C-w><right>', '<C-w>>', opts)
map('n', '<C-w><up>', '<C-w>+', opts)
map('n', '<C-w><down>', '<C-w>-', opts)
