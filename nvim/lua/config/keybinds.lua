-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set

-- General
map("n", "<leader>qq", ":qa!<CR>", { desc = "Quit all" })
map("n", "<leader>ww", ":w<CR>", { desc = "Save file" })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })

-- Clear search
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })

