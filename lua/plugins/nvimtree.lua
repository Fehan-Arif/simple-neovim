local M = {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
}

function M.config()
  local wk = require("which-key")
  wk.add({
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Explorer" },
  })
  require("nvim-tree").setup({
    hijack_netrw = false,
    sync_root_with_cwd = true,
  })
end

return M
