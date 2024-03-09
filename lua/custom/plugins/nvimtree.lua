return {
  --  nvim-tree
  'nvim-tree/nvim-tree.lua',
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
    vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = 'Toggle file [T]ree' })
  end,
}
