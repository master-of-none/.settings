return {
  --colorscheme = "tokyonight",

  plugins = {
    {
      "folke/tokyonight.nvim",
      as = "tokyonight",
      config = function() require("tokyonight").setup {} end,
    },
  },

  colorscheme = "tokyonight",
}
