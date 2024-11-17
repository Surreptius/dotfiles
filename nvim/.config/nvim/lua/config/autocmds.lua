-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmds = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Creates a new autocommand group and removes all commands from this group
local general = augroup("General Settings", { clear = true })

autocmds("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  group = general,
  desc = "Disable New Line Comment",
})

autocmds("BufEnter", {
  pattern = { "*.md", "*.txt" },
  callback = function()
    vim.opt_local.spell = true
  end,
  group = general,
  desc = "Enables Spell Checking on Text Files",
})

autocmds({ "FileType" }, {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.textwidth = 80
  end,
  desc = "Set textwidth to 80 for markdown and text files",
})
