require("config.lazy")
require("config.remap")
require("config.set")
require("config.lsp")

vim.lsp.enable("lua_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("dockerls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("gdtoolkit")
vim.lsp.enable("pylsp")

vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
