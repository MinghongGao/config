-- custom keymap

-- opens lazygit in a tmux popup
vim.keymap.set('n', '<leader>gg', '<cmd>!tmux popup -E -h 80\\% -w 80\\% -d ' .. vim.fn.getcwd() .. ' -- lazygit <CR><CR>', { desc = 'Go LazyGit' })
vim.keymap.set('n', '<leader>gt', '<cmd>!tmux popup -E -h 80\\% -w 80\\% -d ' .. vim.fn.getcwd() .. ' -- <CR><CR> ', { desc = 'Go to Terminal' })
vim.keymap.set('n', '<leader>md', '<cmd>Glow<CR>', { desc = 'Toggle Markdown' })
vim.keymap.set('n', '<leader>db', '<cmd>DBUIToggle<CR>', { desc = 'Toggle DB UI' })
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<CR>', { desc = 'Toggle Git blame' })
vim.keymap.set('n', '<leader>gp', '<cmd>GpChatNew popup<CR>', { desc = 'Chatgpt new popup' })

vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Toggle diagnostic float' })
