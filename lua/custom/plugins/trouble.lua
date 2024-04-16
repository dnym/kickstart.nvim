return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  init = function()
    require('which-key').register {
      ['<leader>t'] = { name = '[T]rouble' },
    }

    local trouble = require 'trouble'

    vim.keymap.set('n', '<leader>tx', function()
      trouble.toggle()
    end, { desc = 'Toggle Trouble' })

    vim.keymap.set('n', '<leader>tw', function()
      trouble.toggle 'workspace_diagnostics'
    end, { desc = '[W]orkspace diagnostics' })

    vim.keymap.set('n', '<leader>td', function()
      trouble.toggle 'document_diagnostics'
    end, { desc = '[D]ocument diagnostics' })

    vim.keymap.set('n', '<leader>tq', function()
      trouble.toggle 'quickfix'
    end, { desc = '[Q]uickFix' })

    vim.keymap.set('n', '<leader>tl', function()
      trouble.toggle 'loclist'
    end, { desc = '[L]ocList' })

    vim.keymap.set('n', 'gR', function()
      trouble.toggle 'lsp_references'
    end, { desc = 'LSP [R]eferences' })
  end,
}
