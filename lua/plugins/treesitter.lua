return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "javascript", "html", "css", "json", "php", "typescript" },
        auto_install = true,
        highlight = { enable = ture },
        indent = { enable = ture },
      })
  end
}
