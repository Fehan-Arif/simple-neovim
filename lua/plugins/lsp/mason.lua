-- Mason is used for talking to language servers. It also installs LSP's, DAP's, Linters, and Formatters
local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}
function M.config()
  local servers = {
    "bashls",
    "cssls",
    "emmet_ls",
    -- "eslint_d",
    "html",
    "jsonls",
    "lua_ls",
    "phpactor",
    -- "prettier",
    "pyright",
    -- "stylua",
    "ts_ls",
    "yamlls",
  }

  require("mason").setup({
    ui = {
      border = "rounded",
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  })

  require("mason-lspconfig").setup({
    ensure_installed = servers,
    auto_install = true,
  })
end

return M
