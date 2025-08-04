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
					text = "Files",
					text_align = "left",
					separator = true,
				},
			},
		},
		highlights = highlights,
	},
}
