---@type ChadrcConfig
local M = {}

M.ui = { theme = 'github_dark', lsp_semantic_tokens = true, nvdash = {
  load_on_startup = true
} }
M.plugins = "custom.plugins"

return M
