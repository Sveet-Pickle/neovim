local set = vim.opt

-- Tab / Indentation
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smartindent = true

-- Search
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = false

-- Appearance
set.number = true
set.relativenumber = true
set.termguicolors = true
set.colorcolumn = '100'
set.signcolumn = "yes"
set.cmdheight = 1
set.scrolloff = 10
set.completeopt = "menuone,noinsert,noselect"

-- Behavior
set.hidden = true
set.errorbells = false
set.swapfile = false
set.backup = false
set.undodir = vim.fn.expand("~/.vim/undodir")
set.undofile = true
set.autochdir = false
set.iskeyword:append("-")
set.modifiable = true
set.encoding = "UTF-8"
set.spell = true
set.spelllang = "en_us"
set.filetype = "on"
set.syntax = "on"
set.clipboard = "unnamedplus"
