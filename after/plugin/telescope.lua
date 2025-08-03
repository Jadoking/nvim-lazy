local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', 'gd', function()
  builtin.lsp_definitions(themes.get_dropdown({ jump_type = "never" }))
end)

vim.keymap.set('n', 'gD', function() builtin.lsp_references() end)
