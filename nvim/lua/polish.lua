-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c", "h", "java" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "json", "javascript" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})
-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
