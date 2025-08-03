vim.keymap.set({ 'n', 'x' }, '<leader>gf', function()
  require('grug-far').open({ visualSelectionUsage = 'operate-within-range' })
end, { desc = 'grug-far: Search within range' })
