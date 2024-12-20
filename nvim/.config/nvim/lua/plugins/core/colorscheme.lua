local colorschemes = {}

table.insert(colorschemes, {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.sonokai_enable_italic = true
        vim.g.sonokai_style = "espresso"
        vim.g.sonokai_transparent_background = 1
    end,
})

table.insert(colorschemes, {
    "rebelot/kanagawa.nvim",
    opts = {
        transparent = true,
        colors = {
            theme = {
                all = { ui = { bg_gutter = "none" } },
            },
        },
    },
})

table.insert(colorschemes, {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
    },
})

table.insert(colorschemes, {
    "p00f/alabaster.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
})

table.insert(colorschemes, {
    "aktersnurra/no-clown-fiesta.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
    },
})

table.insert(colorschemes, {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
    },
})

table.insert(colorschemes, {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
    },
})

return colorschemes
