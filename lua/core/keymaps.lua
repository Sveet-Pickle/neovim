local wk = require("which-key")
local opts = { noremap = true, silent = true }
local keymap = vim.keymap

wk.register({
	["<leader>"] = {
		w = { "<cmd>w<cr>", "Save" },
		b = {
			name = "Buffer",
			b = { "<cmd>Telescope buffers<cr>", "Show Buffers" },
			x = { "<cmd>bd<cr>", "Close buffer" },
			n = { "<cmd>bnext<cr>", "Next buffer" },
			p = { "<cmd>bprevious<cr>", "Previous buffer" },
		},
		s = {
			name = "Surround",
			S = "<cmd>nvim-surround-normal-line<cr>",
			"surround normal line",
		},
		t = {
			name = "Telescope",
			t = { "<cmd>Telescope<cr>", "Telescope" },
			h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
			f = { "<cmd>Telescope find_files<cr>", "Find files" },
			g = { "<cmd>Telescope live_grep<cr>", "Grep" },
			k = { "<cmd>Telescope keymaps<cr>", "Telescope Keymaps" },
		},
		e = { "<cmd>Telescope file_browser<cr>", "Telescope File Browsert" },
		l = {
			name = "LSP",
			d = { "<cmd>vim.diagnostic.open_float<cr>", "Open Diagnostic" },
		},
	},
	-- using < and > in visual mode indents and unindents without exiting visual mode
	keymap.set("v", "<", "<gv"),
	keymap.set("v", ">", ">gv"),
})
