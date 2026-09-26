return {
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000, -- Load before other start plugins

    config = function()
      -- Load the Oxocarbon colorscheme
      vim.cmd.colorscheme 'oxocarbon'
    end,
  },
}
