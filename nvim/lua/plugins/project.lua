-- ~/.config/nvim/lua/plugins/project.lua (optional override)
return {
  "ahmedkhalf/project.nvim",
   event = "VimEnter",
  config = function()
    require("project_nvim").setup {
      detection_methods = { "pattern" },
      patterns = { ".git", "Makefile", "package.json" },
    }
  end,
}
