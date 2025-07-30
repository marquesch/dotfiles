vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

local highlights = require("nord").bufferline.highlights({
	italic = true,
	bold = true,
})

-- Load the colorscheme
require("nord").set()

require("bufferline").setup({
	options = {
		separator_style = "thin",
	},
	highlights = highlights,
})
