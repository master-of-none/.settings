-- ~/.config/nvim/lua/plugins/neotree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup {
      filesystem = {
        hijack_netrw_behavior = "open_default",
        follow_current_file = {
          enabled = true,
        },
        cwd_target = {
          sidebar = "project", -- use project.nvim root
        },
      },
    }

    -- 🔑 Smart project-aware Neo-tree toggle
    vim.keymap.set("n", "<leader>e", function()
      local ok, project = pcall(require, "project_nvim.project")
      if ok and project.get_project_root then
        local root = project.get_project_root() or vim.fn.expand("%:p:h")
        vim.cmd("Neotree toggle dir=" .. root)
      else
        vim.cmd("Neotree toggle")
      end
    end, { desc = "Toggle Neo-tree at project root" })
  end,
}
