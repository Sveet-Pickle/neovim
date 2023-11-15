return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup()
	end,
	opts = {
		padding = true,
	},
	lazy = false,
}
