return {
  "chrisgrieser/nvim-scissors",
  dependencies = { "nvim-telescope/telescope.nvim", "garymjr/nvim-snippets" },
  keys = {
    {
      "<leader>Se",
      function()
        require("scissors").editSnippet()
      end,
      mode = { "n", "v" },
      desc = "Edit Snippets",
    },
    {
      "<leader>Sn",
      function()
        require("scissors").addNewSnippet()
      end,
      mode = { "n", "v" },
      desc = "Add new snippet",
    },
  },
  opts = {
    snippetDir = vim.fn.stdpath("config") .. "/snippets",
  },
}
