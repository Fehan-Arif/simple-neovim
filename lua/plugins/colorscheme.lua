return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
--      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    "lunarvim/darkplus.nvim",
    priority = 1000,
    lazy = false,
    config = function()
--    vim.cmd.colorscheme "darkplus"
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme "gruvbox"
    end
  }
}
