-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.backup = false                     -- No backup, we use git
vim.o.cpoptions = vim.o.cpoptions .. "$" -- Add $ on text change to reduce text shifting around
vim.o.gdefault = true                    -- /g is active on :s
vim.o.list = false
vim.o.listchars = "eol:↲,tab:▶ ,extends:>,precedes:<"
vim.o.relativenumber = false
vim.o.scrolloff = 4     -- lines of context
vim.o.sidescrolloff = 8 -- Columns of context
vim.o.swapfile = false  -- No swap
vim.o.updatetime = 50   -- Decrease update time
vim.o.linebreak = true  -- Wrap at words

vim.g.lazyvim_python_lsp = "basedpyright"
