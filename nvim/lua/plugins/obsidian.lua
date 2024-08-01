local obsidian_path = "~/Notes/"

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  ft = "markdown",
  keys = {
    {
      "<leader>on",
      function()
        vim.api.nvim_command("ObsidianNew")
        vim.api.nvim_buf_set_lines(0, 0, -1, false, {}) -- Clear buffer
        vim.api.nvim_command("ObsidianTemplate Core") -- Apply Core Template
      end,
      desc = "Create new note",
    },
    { "<leader>oo", "<cmd>ObsidianSearch<cr>", desc = "Search Obsidian notes" },
    { "<leader>os", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick Switch" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Show location list of backlinks" },
    { "<leader>of", "<cmd>ObsidianFollowLink<cr>", desc = "Follow link under cursor" },
    { "<leader>ot", "<cmd>ObsidianTemplate Core<cr>", desc = "Apply Core Template" },
  },
  opts = {
    completion = { nvim_cmp = true },
    disable_frontmatter = true,
    notes_subdir = "00 - Inbox",
    new_notes_location = "note_subdir",
    templates = { folder = obsidian_path .. ".meta/templates", date_format = "%y%m%d", time_format = "%H%M" },
    workspaces = { { name = "vault", path = obsidian_path } },

    note_id_func = function(title)
      if title ~= nil then
        return title
      else
        return os.date("%Y%m%d%H%M%S")
      end
    end,
  },
}
