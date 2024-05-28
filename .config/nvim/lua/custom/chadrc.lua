---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'github_dark',
  lsp_semantic_tokens = true,
  nvdash = {
    load_on_startup = true
  },
  statusline = {
    theme = "default",
    separator_style = 'block',
  }
}
M.plugins = "custom.plugins"

return M
