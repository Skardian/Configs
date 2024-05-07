-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.o.formatoptions = vim.o.formatoptions:gsub("o", "") -- Don't start newline with comment with oO
  end,
  group = vim.api.nvim_create_augroup("no_comments_oO", { clear = true }),
  pattern = "*",
})
