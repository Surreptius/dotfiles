local M = {
  "kdheepak/lazygit.nvim",
  event = "VeryLazy",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>gg"] = { "<cmd>LazyGit<CR>", "Lazygit" },
  }
end

return M
