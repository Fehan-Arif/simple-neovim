local M = {
	"folke/which-key.nvim",
	event = "VeryLazy",
}

function M.config()
	local wk = require("which-key")
	wk.add({
		-- { "<leader>f", group = "file" }, -- group
		-- { "<leader>b", name = "Buffers" },
		{
			"<leader>b",
			group = "Buffers",
			expand = function()
				return require("which-key.extras").expand.buf()
			end,
		},
		{ "<leader>d", name = "Debug" },
		{ "<leader>f", name = "Find" }, -- group
		{ "<leader>fn", desc = "New File" },
		{ "<leader>g", name = "Git" },
		{ "<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL" },
		{ "<leader>l", name = "LSP" },
		{ "<leader>p", name = "Plugins" },
		{ "<leader>T", name = "Treesitter" },
		{ "<leader>t", name = "Test" },
		{ "<leader>v", "<cmd>vsplit<CR>", desc = "Split" },
		{ "<leader>a", name = "Tab" },
		{ "<leader>aN", "<cmd>tabnew %<CR>", desc = "New Tab" },
		{ "<leader>ah", "<cmd>-tabmove<CR>", desc = "Move Left" },
		{ "<leader>al", "<cmd>+tabmove<CR>", desc = "Move Right" },
		{ "<leader>an", "<cmd>$tabnew<CR>", desc = "New Empty Tab" },
		{ "<leader>ao", "<cmd>tabonly<CR>", desc = "Only" },
		{
			-- mode = { "n", "v" }, -- NORMAL and VISUAL mode
			mode = { "n" }, -- NORMAL and VISUAL mode
			{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
			{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
		},
	})
	wk.setup({
		preset = "helix",
	})
end

return M
