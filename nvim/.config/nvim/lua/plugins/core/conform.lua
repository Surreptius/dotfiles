local M = {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
}

M.keys = {
    {
        "<leader>cF",
        function()
            require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
        end,
        mode = { "n", "v" },
        desc = "Format Injected Langs",
    },
}

M.opts = {
    formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
    },
}

return M
