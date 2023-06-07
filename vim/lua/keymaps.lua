-- Disable space default behavior
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Toggle search
vim.keymap.set("n", "<leader><cr>", ":set hlsearch!<cr>", { silent = true })
vim.keymap.set("n", "<cr><leader>", ":set hlsearch!<cr>", { silent = true })

-- Exit with jk
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("c", "jk", "<cr>")
vim.keymap.set("c", "kj", "<cr>")

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- -- Quick save and quit
vim.keymap.set("n", "<leader>q", "<cmd>Sayonara!<cr>")
vim.keymap.set("n", "<leader>Q", "<cmd>qa!<cr>")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
--
-- Reselect after indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Select pasted text
vim.keymap.set("n", "gV", "`[V+`]")

-- Make commandline look a little bit more like bash
vim.keymap.set("c", "<c-a>", "<home>")
vim.keymap.set("c", "<c-e>", "<end>")

-- Set filetype
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope filetypes<cr>")

-- Buffer navigation
vim.keymap.set("n", "<leader>n", "<cmd>bn<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>bp<cr>")

-- Fast switch
vim.g.switch_mapping = "-"

-- Keep position
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
--
-- -- UI
-- vim.keymap.set("n", "<leader>ub", "<cmd>BlamerToggle<cr>")
-- vim.keymap.set("n", "<leader>uc", "<cmd>set list!<cr>")
-- vim.keymap.set("n", "<leader>uI", "<cmd>IndentBlanklineToggle<cr>")
