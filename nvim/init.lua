-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- MarkdownHighlight
-- Create an autocommand group for markdown specific settings
vim.api.nvim_create_augroup("MarkdownHighlight", { clear = true })

-- Define the autocommand
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  group = "MarkdownHighlight",
  callback = function()
    -- Define the syntax group for lines starting with §
    vim.cmd([[syntax match SectionLine /^§.*/]])

    -- Link the SectionLine group to an existing highlight group
    vim.cmd([[highlight SectionLine guifg=#7FBBB3]])
  end,
})
