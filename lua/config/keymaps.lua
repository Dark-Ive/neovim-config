-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--delete a word backword
keymap.set("n", "dw", "vb_d")

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

--New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--Split Window
keymap.set("n", "<M-h>", ":split<Return>", opts)
keymap.set("n", "<M-v>", ":vsplit<Return>", opts)

--Move Window
keymap.set("n", "<C-Left>", "<C-w>h")
keymap.set("n", "<C-Up>", "<C-w>k")
keymap.set("n", "<C-Down>", "<C-w>j")
keymap.set("n", "<C-Right>", "<C-w>l")

--Resize Window
local opts = { noremap = true, silent = true }

-- Use Alt + Arrow Keys for resizing splits
vim.api.nvim_set_keymap("n", "<A-Up>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-Down>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

--Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
