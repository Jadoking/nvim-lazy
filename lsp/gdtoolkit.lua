---@type vim.lsp.Config
-- lua/myconfig/lsp/godot.lua
return {
  cmd = { "gdtoolkit", "lsp" },
  filetypes = { "gd" },
  root_markers = { "project.godot", ".git" },
}

