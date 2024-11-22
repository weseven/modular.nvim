return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
    'echasnovski/mini.pick', -- optional
  },
  event = 'VeryLazy',
  config = function()
    require('neogit').setup {
      graph_style = 'unicode',
    }

    -- keymaps
    vim.keymap.set('n', '<leader>gg', ':Neogit<CR>', { noremap = true, silent = true, desc = 'Open [G]it [G]it' })
    vim.keymap.set('n', '<leader>gs', ':Neogit kind=split<CR>', { noremap = true, silent = true, desc = 'Open [G]it [S]plit' })
    vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { noremap = true, silent = true, desc = 'Open [G]it [C]ommit' })
  end,
}
