local highlights = require("nord").bufferline.highlights({
	italic = true,
	bold = true,
})

return {
	"akinsho/bufferline.nvim",
	opts = {
		options = {
			separator_style = "thin",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
					separator = true,
				},
			},
		},
		highlights = highlights,
	},
}
