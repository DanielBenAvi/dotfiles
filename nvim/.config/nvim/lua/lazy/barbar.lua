return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    animation = false,
    highlight_visible = true,
    icons = {
      buffer_index = false,
      buffer_number = false,
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true, icon = ' ' },
        [vim.diagnostic.severity.WARN] = { enabled = true, icon = ' ' },
        [vim.diagnostic.severity.INFO] = { enabled = true, icon = ' ' },
        [vim.diagnostic.severity.HINT] = { enabled = true, icon = '󰌵 ' },
      },
    },
  },
  config = function(_, opts)
    require('barbar').setup(opts)

    -- Example keymaps
    vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { desc = 'Next buffer' })
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { desc = 'Previous buffer' })
    vim.keymap.set('n', '<leader>c', '<Cmd>BufferClose<CR>', { desc = 'Close buffer' })
  end,
}
