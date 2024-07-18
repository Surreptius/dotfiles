return {
  "folke/which-key.nvim",
  opts_extend = { "spec" },
  opts = {
    spec = {
      mode = { "n", "v" },
      { "<leader>S", group = "Snippets", icon = { icon = "", color = "green" } },
    },
  },
}
