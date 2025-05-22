-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- move cursor down 5 lines
local keymap = vim.keymap.set
local keymapdel = vim.keymap.del
local opts = { noremap = true, silent = true }

-- move cursor up 5 lines
keymap("n", "J", "5j", opts)

-- move cursor down 5 lines
keymap("n", "K", "5k", opts)

--remove delete left buffer keymap
keymapdel("n", "<leader>bl")

-- Buffer nach rechts verschieben
vim.keymap.set("n", "<leader>bl", "<Cmd>BufferLineCycleNext<CR>", { desc = "Move Buffer Right" })

-- Buffer nach links verschieben
vim.keymap.set("n", "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Move Buffer Left" })
