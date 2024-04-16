return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.keymap.set('i', '<C-j>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<C-k>', function()
      return vim.fn['codeium#CycleOrComplete']()
    end, { expr = true, silent = true })
    -- vim.keymap.set('i', '<C-k>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
    vim.keymap.set('i', '<C-i>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<C-o>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })
  end,
  init = function()
    vim.g.codeium_disable_bindings = 1
    vim.g.codeium_no_map_tab = 1
    vim.g.codeium_manual = true
  end,
}
