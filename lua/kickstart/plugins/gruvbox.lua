return {
  {
    -- Change this to the Gruvbox plugin
    'ellisonleao/gruvbox.nvim',
    priority = 1000, -- Load this before other plugins
    config = function()
      -- Optional: configure Gruvbox settings
      require('gruvbox').setup {
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          comments = false, -- disable italics in comments
          keywords = true,
          functions = true,
          variables = true,
        },
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        contrast = '', -- options: 'hard', 'soft', 'medium'
        overrides = {},
      }

      -- Load the colorscheme
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}
