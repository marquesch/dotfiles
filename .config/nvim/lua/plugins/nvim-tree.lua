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
			git_ignored = false,
			custom = { "\\.git", "venv", "\\.venv", "__pycache__" },
		},
	},
}
