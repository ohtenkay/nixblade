-- Has to be set before loading lazy
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

local opt = vim.opt

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- Use spaces instead of tabs and set the tab width to 4
opt.expandtab = true
opt.shiftwidth = 4

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- Sync clipboard between OS and Neovim.
opt.clipboard = 'unnamedplus'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Highlight search terms as you type
opt.hlsearch = true

-- Preview substitutions live as you type
opt.inccommand = 'split'

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Disable line wrap
opt.wrap = false

-- Needed for global status line
opt.laststatus = 3

-- Enable inline diagnostic
vim.diagnostic.config {
  virtual_text = true,
}
