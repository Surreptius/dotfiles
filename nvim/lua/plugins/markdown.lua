return {
  'MeanderingProgrammer/markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('render-markdown').setup({
      render_modes = { "n", "c" },
      headings = { '# ', '## ', '### ', '#### ', '##### ', '######' },
      callout = {
        note = '󰋽 Note',
        tip = '󰇂  :',
        important = '󰅾 Important',
        warning = '󰀪 Warning',
        caution = '󰳦 Caution',
      },
    })
  end,
}
