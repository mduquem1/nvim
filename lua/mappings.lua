require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "i", "x", "n", "s" }, "<leader>s", "<cmd>w<cr><esc>", { desc = "Save file" })
