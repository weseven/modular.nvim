return {
  --  nvim-tree
  'nvim-tree/nvim-tree.lua',
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      hijack_cursor = false,
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
    }
    -- keymap
    vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = 'File [T]ree [T]oggle' })
    vim.keymap.set('n', '<leader>tf', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true, desc = 'File [T]ree find [F]ile toggle' })
    vim.keymap.set('n', '<leader>tr', ':NvimTreeRefresh<CR>', { noremap = true, silent = true, desc = 'File [T]ree [R]efresh' })
  end,
}
