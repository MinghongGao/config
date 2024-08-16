-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<space>'] = 'none',
          ['p'] = {
            function(state)
              local node = state.tree:get_node()
              print(node.path)
            end,
            desc = 'print path',
          },
          ['o'] = 'system_open',
        },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
    },
    buffers = {
      follow_current_file = {
        enabled = true,
      },
    },
    commands = {
      system_open = function(state)
        local node = state.tree:get_node()
        local path = node:get_id()
        -- macOs: open file in default application in the background.
        vim.fn.jobstart({ 'open', '-g', path }, { detach = true })

        -- Windows: Without removing the file from the path, it opens in code.exe instead of explorer.exe
        local p
        local lastSlashIndex = path:match '^.+()\\[^\\]*$' -- Match the last slash and everything before it
        if lastSlashIndex then
          p = path:sub(1, lastSlashIndex - 1) -- Extract substring before the last slash
        else
          p = path -- If no slash found, return original path
        end
        vim.cmd('silent !start explorer ' .. p)
      end,
    },
  },
}
