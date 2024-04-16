-- Force English; translations make finding information on error messages much harder.
vim.api.nvim_exec2('language en_US', {})

-- For Windows.
-- vim.opt.guifont = 'Consolas:h11'
-- vim.g.python3_host_prog = 'C:/Users/david/anaconda3/envs/pynvim/python.exe'
--
-- In init.lua, for telescope-fzf-native I had
-- build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',

-- Relative numbers are good.
vim.opt.relativenumber = true

-- Forces me to use hjkl.
vim.keymap.set('n', '<left>', '<NOP>')
vim.keymap.set('n', '<right>', '<NOP>')
vim.keymap.set('n', '<up>', '<NOP>')
vim.keymap.set('n', '<down>', '<NOP>')

-- I like to use light schemes during the day, dark at night.
require('which-key').register {
  ['<leader>x'] = { name = 'E[X]tras' },
}
vim.keymap.set('n', '<leader>xs', function()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end, { desc = 'Toggle color[S]cheme' })

-- I like to write '{<CR>}' and then jump up to write the body inbetween.
vim.keymap.set('i', '<C-b>', '<Esc>O')
-- More convenient mode escape. I probably won't have to write 'jj' often.
vim.keymap.set('i', 'jj', '<Esc>')

-- Via ThePrimeagen.
require('which-key').register {
  ['<leader>p'] = { name = '[P]roject helpers' },
}
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find by [F]ile name' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Find by tracked file name' })
-- Search for the word below the cursor, in files within the project.
vim.keymap.set('n', '<leader>pw', function()
  local word = vim.fn.expand '<cword>'
  builtin.grep_string { search = word }
end, { desc = 'Grep for [w]ord below cursor' })
-- Same as above, but for the WORD below the cursor.
vim.keymap.set('n', '<leader>pW', function()
  local word = vim.fn.expand '<cWORD>'
  builtin.grep_string { search = word }
end, { desc = 'Grep for [W]ORD below cursor' })
-- Search for entered term in files within the project.
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string { search = vim.fn.input 'Grep > ' }
end, { desc = 'Grep for entered [S]earch term' })
