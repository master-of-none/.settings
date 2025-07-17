-- return {
--   "lukas-reineke/indent-blankline.nvim",
--   event = { "BufReadPost", "BufNewFile" },
--   main = "ibl",
--   opts = {
--     indent = { char = "│" }, -- Customize indent character
--     scope = { enabled = true }, -- Scope highlighting
--   },
--     config = function(_, opts)
--     local highlights = {"Whitespace"}
--     vim.tbl_extend("force", opts, {
--       -- options that for some reason you couldn't add in the opts field table
--     })
--
--     require("ibl").setup(opts)
--   end,
-- }
--
-- return {
--   "lukas-reineke/indent-blankline.nvim",
--   event = { "BufReadPost", "BufNewFile" },
--   main = "ibl",
--   opts = {
--     indent = { char = "│" }, -- Customize indent character
--     scope = { enabled = true }, -- Scope highlighting
--   },
--   config = function(_, opts)
--     -- Ranibow indent code start
--     local highlight = {
--       "RainbowRed",
--       "RainbowYellow",
--       "RainbowBlue",
--       "RainbowOrange",
--       "RainbowGreen",
--       "RainbowViolet",
--       "RainbowCyan",
--     }
--
--     local hooks = require("ibl.hooks")
--     hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--       vim.api.nvim_set_hl(0, "RainbowRed",    { fg = "#E06C75" })
--       vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
--       vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#61AFEF" })
--       vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
--       vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#98C379" })
--       vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
--       vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#56B6C2" })
--     end)
--
--     -- Merge highlight into opts
--     opts.indent.highlight = highlight
--     -- Rainbow indent code ends
--     require("ibl").setup(opts)
--   end,
-- }
--

-- This is for new with dots
return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = {
      char = "│", -- Customize indent character
      highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      },
    },
    -- whitespace = {
    -- remove_blankline_trail = false, -- Keep whitespace markers on blank lines
    -- highlight = { "Whitespace" },   -- Highlight group for dots
    -- },
    scope = { enabled = true }, -- Scope highlighting
  },
  config = function(_, opts)
    local highlight = {
      "RainbowRed",
      "RainbowYellow",
      "RainbowBlue",
      "RainbowOrange",
      "RainbowGreen",
      "RainbowViolet",
      "RainbowCyan",
    }

    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    end)

    -- Use dots instead of spaces
    vim.opt.list = true
    -- vim.opt.listchars:append("space:.") -- Show dots for spaces

    require("ibl").setup(opts)
  end,
}
