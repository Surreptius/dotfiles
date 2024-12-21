local M = {
    "neovim/nvim-lspconfig",
    dependencies = {
        "mason.nvim",
        { "williamboman/mason-lspconfig.nvim", config = function() end },
    },
}

M.opts = {
    servers = {},
}

return M
