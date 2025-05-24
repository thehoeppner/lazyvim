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
keymap("n", "<leader>bl", "<Cmd>BufferLineCycleNext<CR>", { desc = "Move Buffer Right" })

-- Buffer nach links verschieben
keymap("n", "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Move Buffer Left" })

keymap("n", "<F5>", "<Cmd>lua require'dap'.continue()<CR>", opts)
keymap("n", "<F6>", "<Cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>", opts)
keymap("n", "<F9>", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<F10>", "<Cmd>lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F11>", "<Cmd>lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F8>", "<Cmd>lua require'dap'.step_out()<CR>", opts)
keymap(
  "n",
  "<leader>dn",
  "<Cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>",
  { noremap = true, silent = true, desc = "debug nearest test" }
)
