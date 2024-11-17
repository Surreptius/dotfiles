local M = {
  "nvim-treesitter/nvim-treesitter",
}

M.opts = {
  highlight = { enable = true },
  ensure_installed = {
    -- Non
    "bash",
    "c",
    "cpp",
    "kotlin",
    "lua",
    "luadoc",
    "luap",
    "python",
    "regex",
    "sql",
    -- Web
    "astro",
    "css",
    "html",
    "javascript",
    "scss",
    "tsx",
    "typescript",
    "vue",
    -- Misc
    "json",
    "markdown",
    "markdown_inline",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },
}

return M
