return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")
    local max_items = 5

    -- Load VSCode Style Snippets from installed Plugins (e.g. frienldy-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })

    cmp.setup({
      window = {
        completion = {
          border = "rounded",
          scrollbar = false,
        },
        documentation = {
          border = "rounded",
          scrollbar = false,
        },
      },

      completion = {
        completeopt = "menu,menuone,preview,noinsert",
      },

      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },

      mapping = {
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-y>"] = cmp.mapping(
          cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          }),
          { "i", "c" }
        ),
      },

      sources = cmp.config.sources({
        { name = "nvim_lsp", max_item_count = max_items },
        { name = "luasnip", max_item_count = max_items },
        { name = "buffer", max_item_count = max_items },
        { name = "path", max_item_count = max_items },
        { name = "lazydev", max_item_count = max_items, group_index = 0 },
      }),

      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },
    })

    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer", max_item_count = max_items },
      },
    })

    --[[
    Enabled cmp in the nvim commandline

    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path", max_item_count = max_items },
      }, {
        { name = "cmdline", max_item_count = max_items },
      }),
    })
    --]]

    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      end
    end, { silent = true })
  end,
}
