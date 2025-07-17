-- Force 4-width tabs for Go
return {
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
      vim.bo.tabstop = 4
      vim.bo.shiftwidth = 4
      vim.bo.softtabstop = 4
      vim.bo.expandtab = false -- Go uses tabs, not spaces
    end,
  }),
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "cpp", "c", "h", "hpp" },
    callback = function()
      vim.bo.tabstop = 4 -- A tab character looks like 4 spaces
      vim.bo.shiftwidth = 4 -- Indent by 4 columns when using >> or <<
      vim.bo.softtabstop = 4 -- Tab key inserts a tab of size 4
      vim.bo.expandtab = false -- USE TAB CHARACTER (not spaces)
    end,
  }),
}
