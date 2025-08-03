local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', 'gd', function()
  local opts = require('telescope.themes').get_dropdown()
  builtin.lsp_definitions(vim.tbl_extend("force", opts, {
    jump_type = nil,  -- don't auto-jump on 1 result
  }))
end)
