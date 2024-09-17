local M = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
}

function M.config()
	local harpoon = require("harpoon")

	-- REQUIRED
	harpoon:setup()
	-- REQUIRED

	vim.keymap.set("n", "<S-m>", function()
		harpoon:list():add()
	end)
	vim.keymap.set("n", "<TAB>", function()
		harpoon.ui:toggle_quick_menu(harpoon:list())
	end)

	-- Toggle previous & next buffers stored within Harpoon list
	vim.keymap.set("n", "<C-h>", function()
		harpoon:list():prev()
	end)
	vim.keymap.set("n", "<C-l>", function()
		harpoon:list():next()
	end)
	vim.notify("󱡅  marked file")
	-- basic telescope configuration
	-- local conf = require("telescope.config").values
	-- local function toggle_telescope(harpoon_files)
	-- 	local file_paths = {}
	-- 	for _, item in ipairs(harpoon_files.items) do
	-- 		table.insert(file_paths, item.value)
	-- 	end
	--
	-- 	require("telescope.pickers")
	-- 		.new({}, {
	-- 			prompt_title = "Harpoon",
	-- 			finder = require("telescope.finders").new_table({
	-- 				results = file_paths,
	-- 			}),
	-- 			previewer = conf.file_previewer({}),
	-- 			sorter = conf.generic_sorter({}),
	-- 			theme = "dropdown",
	-- 		})
	-- 		:find()
	-- end
	--
	-- vim.keymap.set("n", "<C-e>", function()
	-- 	toggle_telescope(harpoon:list())
	-- end, { desc = "Open harpoon window" })
end

return M
