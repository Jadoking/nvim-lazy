require("config.lazy")
require("config.remap")
require("config.set")

-- import lsp manually
vim.lsp.enable("lua_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("dockerls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("gdtoolkit")
vim.lsp.enable("pylsp")


