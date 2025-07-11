vim.keymap.set({ 'n', 'x' }, '<leader>sr', function()
  require('grug-far').open({ visualSelectionUsage = 'operate-within-range' })
end, { desc = 'grug-far: Search within range' })
