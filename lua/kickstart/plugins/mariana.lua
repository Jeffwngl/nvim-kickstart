return {
  {
    'sthendev/mariana.vim',
    priority = 1000,
    lazy = false,

    build = 'make',

    config = function()
      vim.cmd.colorscheme 'mariana'
    end,
  },
}
