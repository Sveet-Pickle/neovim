return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"wiliamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			settings = {
				lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})

		--python
		lspconfig.pyright.setup({
			on_attach = function(client, bufnr) end,
			settings = {
				pyright = {
					disableOrganizeImports = false,
					analysis = {
						useLibraryCodeForTypes = true,
						autoSearchPaths = true,
						diagnosticMode = "workspace",
						autoImportCompletions = true,
					},
				},
			},
		})

		local luacheck = require("efmls-configs.linters.luacheck")
		local stylua = require("efmls-configs.formatters.stylua")
		local flake8 = require("efmls-configs.linters.flake8")
		local black = require("efmls-configs.formatters.black")

		lspconfig.efm.setup({
			filetypes = {
				"lua",
				"python",
			},
			init_options = {
				documentFormatting = true,
				documentRangeFormatting = true,
				hover = true,
				documentSymbol = true,
				codeAction = true,
				completion = true,
			},
			settings = {
				languages = {
					lua = { luacheck, stylua },
					python = { flake8, black },
				},
			},
		})
	end,
}
