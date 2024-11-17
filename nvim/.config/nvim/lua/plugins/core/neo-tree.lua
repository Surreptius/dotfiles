local M = {
  "nvim-neo-tree/neo-tree.nvim",
}

M.opts = {
  window = {
    position = "right",
  },
  filesystem = {
    hijack_netrw_behavior = "open_current",
  },
}

return M
