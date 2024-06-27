return {
  'MeanderingProgrammer/markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('render-markdown').setup({
      render_modes = { "n", "c" },
      headings = { '# ', '## ', '### ', '#### ', '##### ', '######' },
      bullets = { '•', '◦', '▪', '▫' },
      callout = {
        note = '󰋽 Note',
        tip = 'Def: ',
        important = '󰅾 Important',
        warning = '󰀪 Warning',
        caution = '󰳦 Caution',
      },
    })
  end,
}
