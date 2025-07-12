---@type vim.lsp.Config
return {
  cmd = { "pylsp" },
  filetypes = { "py" },
  root_markers = { "requirements.txt", "setup.py", ".git" },
}

