-- Make line numbers default
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- custom keymap

-- opens lazygit in a tmux popup
vim.keymap.set('n', '<leader>gg', '<cmd>!tmux popup -E -h 80\\% -w 80\\% -d ' .. vim.fn.getcwd() .. ' -- lazygit <CR><CR>', { desc = 'Go LazyGit' })
vim.keymap.set('n', '<leader>gt', '<cmd>!tmux popup -E -h 80\\% -w 80\\% -d ' .. vim.fn.getcwd() .. ' -- <CR><CR> ', { desc = 'Go to Terminal' })
vim.keymap.set('n', '<leader>md', '<cmd>Glow<CR>', { desc = 'Toggle Markdown' })
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<CR>', { desc = 'Toggle Git blame' })
vim.keymap.set('n', '<leader>gp', '<cmd>GpChatNew popup<CR>', { desc = 'Chatgpt new popup' })

vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Toggle diagnostic float' })
