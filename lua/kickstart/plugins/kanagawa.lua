return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    lazy = false,

    config = function()
      require('kanagawa').setup {
        compile = false,
        undercurl = true,
        commentStyle = {
          italic = false,
        },
        functionStyle = {
          bold = false,
        },
        keywordStyle = {
          italic = false,
        },
        statementStyle = {
          bold = false,
        },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,

        colors = {
          palette = {},

          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {},
          },
        },

        overrides = function(colors)
          return {
            -- Slightly darker editor background
            Normal = {
              bg = '#181820',
            },

            NormalNC = { -- #101116
              bg = '#101116',
            },

            SignColumn = {
              bg = '#101116',
            },

            EndOfBuffer = {
              fg = '#181820',
              bg = '#181820',
            },

            -- Floating windows
            NormalFloat = {
              bg = '#16181d',
            },

            FloatBorder = {
              fg = colors.palette.fujiGray,
              bg = '#16181d',
            },

            -- Completion menu
            Pmenu = {
              bg = '#16181d',
            },

            PmenuSel = {
              bg = '#2a2d35',
              bold = true,
            },

            -- Cursor line and selection
            CursorLine = {
              bg = '#181a20',
            },

            Visual = {
              bg = '#2a2d35',
            },

            -- Line numbers
            LineNr = {
              fg = colors.palette.fujiGray,
              bg = '#101116',
            },

            CursorLineNr = {
              fg = colors.palette.roninYellow,
              bg = '#101116',
              bold = true,
            },
          }
        end,

        theme = 'dragon',

        background = {
          dark = 'dragon',
          light = 'lotus',
        },
      }

      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
}
