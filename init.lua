require("config.launch")
require("config.keymaps")
require("config.options")
require("config.autocmds")
-- Plugins
spec("plugins.alpha")
spec("plugins.autopairs")
spec("plugins.breadcrumbs")
spec("plugins.colorscheme")
spec("plugins.harpoon")
spec("plugins.illuminate") -- Plugin for highlighting the same word
spec("plugins.indentline") -- Show line indentaion
spec("plugins.lualine")
spec("plugins.navic") --winbar showing the function you are in
spec("plugins.nvimtree")
spec("plugins.project")
spec("plugins.telescope")
spec("plugins.whichkey")
-- code parser
spec("plugins.treesitter")
-- Linting
-- LSP
spec("plugins.lsp.cmp") -- missing fields
spec("plugins.lsp.extras") -- copilot tabnine: disbable neoscroll. check others
spec("plugins.lsp.lspconfig") -- signs deprecated
spec("plugins.lsp.mason")
spec("plugins.lsp.none-ls")
spec("plugins.lsp.schemastore")
-- Git
spec("plugins.git.gitsigns")
spec("plugins.git.neogit")
-- spec "user.neotest"
-- spec "user.toggleterm"
require("config.lazy")
