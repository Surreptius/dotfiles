-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
