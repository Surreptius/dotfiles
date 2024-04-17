-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "-"

-- Delete a word backwards
keymap("n", "cw", "ciw")

-- New tab
keymap("n", "te", ":tabedit", opts)
keymap("n", "<tab>", ":tabnext<CR>", opts)
keymap("n", "<s-tab>", ":tabprev<CR>", opts)

-- Split
keymap("n", "ss", ":split<CR>", opts)
keymap("n", "vs", ":vsplit<CR>", opts)
-- Move window
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
-- Resize
keymap("n", "<C-w><left>", "<C-w><", opts)
keymap("n", "<C-w><right>", "<C-w>>", opts)
keymap("n", "<C-w><up>", "<C-w>+", opts)
keymap("n", "<C-w><down>", "<C-w>-", opts)

-- Diagnostic
keymap("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
