local config = {
  filesystem = {
    hijack_netrw_behavior = "open_current",
  }
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  config = config,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  }
}
