return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  init = function()
    require('which-key').add {
      { '<leader>b', group = 'Trou[B]le' },
    }

    local trouble = require 'trouble'

    vim.keymap.set('n', '<leader>bx', function()
      trouble.toggle()
    end, { desc = 'Toggle Trouble' })

    vim.keymap.set('n', '<leader>bw', function()
      trouble.toggle 'workspace_diagnostics'
    end, { desc = '[W]orkspace diagnostics' })

    vim.keymap.set('n', '<leader>bd', function()
      trouble.toggle 'document_diagnostics'
    end, { desc = '[D]ocument diagnostics' })

    vim.keymap.set('n', '<leader>bq', function()
      trouble.toggle 'quickfix'
    end, { desc = '[Q]uickFix' })

    vim.keymap.set('n', '<leader>bl', function()
      trouble.toggle 'loclist'
    end, { desc = '[L]ocList' })

    vim.keymap.set('n', 'gR', function()
      trouble.toggle 'lsp_references'
    end, { desc = 'LSP [R]eferences' })
  end,
}
