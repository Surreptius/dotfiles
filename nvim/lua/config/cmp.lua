local cmp = require("cmp")

local opts = {
  window = {
    completion = {
      winblend = 0,
    },
    documentation = {
      winblend = 0,
    },
  },
}

opts = vim.tbl_deep_extend("force", opts, require("nvchad.cmp"))
require("cmp").setup(opts)
