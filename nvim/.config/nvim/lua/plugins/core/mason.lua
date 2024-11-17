local M = {
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  opts_extend = { "ensure_installed" },
}

M.keys = {
  { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
}

M.opts = {
  ensure_installed = {
    -- C/C++
    "clangd",
    "clang-format",
    --CSS
    "css-lsp",
    -- Kotlin
    "ktlint",
    -- PHP
    "phpcs",
    "php-cs-fixer",
    -- Lua
    "stylua",
    -- Markdown,
    "markdownlint-cli2",
    "markdown-toc",
    -- Prettier
    "prettierd",
    -- Shell
    "shfmt",
    -- SQL
    "sqlfluff",
    -- Vue
    "vue-language-server",
  },
}

return M
