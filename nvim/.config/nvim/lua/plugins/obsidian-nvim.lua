local M = {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>of", ": /\\(# \\)[^-]*-/\\1/ | s/_/ /g<cr>", desc = "Format Note Title" },
        { "<leader>oc", ":ObsidianToggleCheckbox<cr>", desc = "Toggle Checkbox" },
        { "<leader>ot", ":ObsidianTemplate<cr>", desc = "Use Template" },
    },
}

M.opts = {
    preffered_link_style = "wiki",
    workspaces = {
        {
            name = "notes",
            path = "~/Notes",
        },
    },
    disable_frontmatter = true,
    ui = { enable = false },
    templates = {
        folder = "$NOTES/99 - Meta/templates",
        date_format = "%Y-%m-%d",
    },
}

return M
