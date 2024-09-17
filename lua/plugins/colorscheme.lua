-- A file for all the colorschemes
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
  },
  {
    "lunarvim/darkplus.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "sainnhe/sonokai",
    priority = 1000,
    lazy = false,
  },
  {
    "AlexvZyl/nordic.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "tiagovla/tokyodark.nvim",
    priority = 1000,
    lazy = false,
  },
}
