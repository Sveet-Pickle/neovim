vim.api.nvim_create_augroup("quicknote", { clear = true })
vim.api.nvim_create_augroup("markdown", { clear = true })

vim.api.nvim_create_autocmd("bufenter", {
	pattern = "quicknote.md",
	callback = function()
		vim.schedule(function()
			print("quicknote opened")
		end)
		vim.cmd(":%d")
	end,
	group = "quicknote",
})

vim.api.nvim_create_autocmd("bufenter", {
	pattern = "*.md",
	callback = function()
		vim.schedule(function()
			print("markdown file opened")
		end)
		vim.cmd(":set noexpandtab")
		vim.cmd(":set textwidth=80")
	end,
	group = "markdown",
})
