local M = {}

M.base46 = {
  theme = "onedark",
  transparency = true,
}

M.ui = {
  statusline = { theme = "vscode_colored" },

  tabufline = { enabled = false },

  cmp = {
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = true,
    },
  },
}

M.colorify = {
  highlight = { hex = true, lspvars = true },
}

return M
