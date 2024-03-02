require("lint").linters_by_ft = {
  html = {"eslint"},
  javascript = {"eslint"},
  typescript = {"eslint"},
  javascriptreact = {"eslint"},
  typescriptreact = {"eslint"}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
