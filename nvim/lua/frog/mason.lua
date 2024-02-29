local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}

local icons = require("frog.icons")

function M.config()
  local servers = {
    "lua_ls",
    "cssls",
    "html",
    "tsserver",
    "pyright",
    "bashls",
    "jsonls",
  }

  require("mason").setup {
    ui = {
      border = "rounded",
      icons = {
        package_installed = icons.ui.Check,
        package_pending = icons.ui.Ellipsis,
        package_uninstalled = icons.ui.Close
      }
    },
  }

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }
end

return M
