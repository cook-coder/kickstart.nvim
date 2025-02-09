-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

for i = 1, 9 do
  vim.keymap.set('n', '<A-' .. i .. '>', '<Cmd>BufferGoto ' .. i .. '<CR>', opts)
end
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
vim.keymap.set('n', '<A-s-c>', '<Cmd>BufferRestore<CR>', opts)

vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
vim.keymap.set('n', '<C-s-p>', '<Cmd>BufferPickDelete<CR>', opts)

vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
vim.keymap.set('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
