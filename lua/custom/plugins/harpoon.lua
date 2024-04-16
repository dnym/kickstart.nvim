return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  init = function()
    require('which-key').register {
      ['<leader>h'] = { name = '[H]arpoon' },
    }

    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>ha', function()
      mark.add_file()
    end, { desc = '[A]dd file' })

    vim.keymap.set('n', '<leader>ht', function()
      ui.toggle_quick_menu()
    end, { desc = '[T]oggle quick menu' })

    vim.keymap.set('n', '<leader>hn', function()
      ui.nav_next()
    end, { desc = '[N]ext mark' })

    vim.keymap.set('n', '<leader>hp', function()
      ui.nav_prev()
    end, { desc = '[P]revious mark' })

    vim.keymap.set('n', '<leader>h1', function()
      ui.nav_file(1)
    end, { desc = 'Mark #[1]' })

    vim.keymap.set('n', '<leader>h2', function()
      ui.nav_file(2)
    end, { desc = 'Mark #[2]' })

    vim.keymap.set('n', '<leader>h3', function()
      ui.nav_file(3)
    end, { desc = 'Mark #[3]' })

    vim.keymap.set('n', '<leader>h4', function()
      ui.nav_file(4)
    end, { desc = 'Mark #[4]' })

    vim.keymap.set('n', '<leader>h5', function()
      ui.nav_file(5)
    end, { desc = 'Mark #[5]' })

    vim.keymap.set('n', '<leader>h6', function()
      ui.nav_file(6)
    end, { desc = 'Mark #[6]' })

    vim.keymap.set('n', '<leader>h7', function()
      ui.nav_file(7)
    end, { desc = 'Mark #[7]' })

    vim.keymap.set('n', '<leader>h8', function()
      ui.nav_file(8)
    end, { desc = 'Mark #[8]' })

    vim.keymap.set('n', '<leader>h9', function()
      ui.nav_file(9)
    end, { desc = 'Mark #[9]' })
  end,
}
