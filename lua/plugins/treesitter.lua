-- Treesitter is used for creating syntax highlighting for different languages
local M = {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	build = ":TSUpdate",
}

function M.config()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"bash",
			"c",
			"css",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"php",
			"python",
			"typescript",
		},
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	})
end

return M
