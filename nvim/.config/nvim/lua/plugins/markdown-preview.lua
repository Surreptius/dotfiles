local M = {
    "OXY2DEV/markview.nvim",
}

M.opts = {
    block_quotes = {
        enable = true,

        callouts = {
            {
                ---@type string
                match_string = "Best Practice",

                ---@type string?
                hl = "CmpItemKindInterface",

                ---@type string
                preview = "󰦇 Best Practice",

                ---@type string?
                preview_hl = nil,

                ---@type boolean
                title = true,

                ---@type string
                icon = "󰦇: ",

                ---@type string | string
                border = "▋",

                ---@type (string | string[])?
                border_hl = nil,
            },
            {
                ---@type string
                match_string = "TIP",

                ---@type string?
                hl = "CmpItemKindMethod",

                ---@type string
                preview = " Tip",

                ---@type string?
                preview_hl = nil,

                ---@type boolean
                title = true,

                ---@type string
                icon = ": ",

                ---@type string | string
                border = "▋",

                ---@type (string | string[])?
                border_hl = nil,
            },
            {
                ---@type string
                match_string = "RULE",

                ---@type string?
                hl = "CmpItemKindUnit",

                ---@type string
                preview = "󰊛 Rule",

                ---@type string?
                preview_hl = nil,

                ---@type boolean
                title = true,

                ---@type string
                icon = "󰊛: ",

                ---@type string | string
                border = "▋",

                ---@type (string | string[])?
                border_hl = nil,
            },
            {
                ---@type string
                match_string = "WARNING",

                ---@type string?
                hl = "CmpItemKindProperty",

                ---@type string
                preview = " Warning",

                ---@type string?
                preview_hl = nil,

                ---@type boolean
                title = true,

                ---@type string
                icon = ": ",

                ---@type string | string
                border = "▋",

                ---@type (string | string[])?
                border_hl = nil,
            },
        },
    },
    headings = {
        enable = true,
        shift_width = 1,

        heading_1 = {
            style = "label",
            hl = "MarkviewHeading1",
            align = "center",
        },
    },
}

return M
