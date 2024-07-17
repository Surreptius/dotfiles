return {
  "MeanderingProgrammer/markdown.nvim",
  as = "render-markdown",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("render-markdown").setup({
      heading = {
        icons = { "# ", "## ", "### ", "#### ", "##### ", "######" },
      },
      bullet = {
        icons = { "•", "◦", "▪", "▫" },
      },
    })
  end,
}
