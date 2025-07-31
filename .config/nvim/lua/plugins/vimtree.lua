return {
	"nvim-tree/nvim-tree.lua",
	opts = {
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
	},
	config = function(_, opts)
		require("nvim-tree").setup(opts)

		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle file [E]xplorer" })
	end,
}
