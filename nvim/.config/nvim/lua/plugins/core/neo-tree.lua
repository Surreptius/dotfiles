local M = {
    "nvim-neo-tree/neo-tree.nvim",
}

M.opts = {
    window = {
        position = "right",
    },
    filesystem = {
        hijack_netrw_behavior = "open_current",
        filtered_items = {
            hide_dotfiles = false,
        },
    },
}

return M
