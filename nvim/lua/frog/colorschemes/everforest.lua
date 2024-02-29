local M = {
  "neanias/everforest-nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  require("everforest").setup({
    transparent_background_level = 2,
  })
  vim.cmd.colorscheme "everforest"
end

return M
