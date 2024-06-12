return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Nvim Tree',
            text_align = 'left',
          },
        },
      },
    }
  end,
}
