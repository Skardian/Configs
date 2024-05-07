-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle search
vim.keymap.set("n", "<leader><cr>", ":set hlsearch!<cr>", { silent = true, desc = "Toggle search highlight" })
vim.keymap.set("n", "<cr><leader>", ":set hlsearch!<cr>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- -- Quick save and quit
vim.keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Force exit without saving" })
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save current buffer" })

-- Reselect after indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Select pasted text
vim.keymap.set("n", "gV", "`[V+`]", { desc = "Select pasted text" })

-- Make commandline look a little bit more like bash
vim.keymap.set("c", "<c-a>", "<home>")
vim.keymap.set("c", "<c-e>", "<end>")

-- Buffer navigation
vim.keymap.set("n", "<leader>n", "<cmd>bn<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>bp<cr>")

-- Keep position
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- UI
vim.keymap.set("n", "<leader>uc", "<cmd>set list!<cr>", { desc = "Toggle hidden characters" })

vim.keymap.del("n", "<esc>") -- Clear highlight

vim.keymap.set("n", "q:", ":q")

-- Center search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
