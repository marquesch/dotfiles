return {
	"nvim-tree/nvim-tree.lua",
	-- lazy = true,
	opts = {
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 50,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = false,
			custom = { "\\.git", "venv", "\\.venv" },
		},
	},
}
