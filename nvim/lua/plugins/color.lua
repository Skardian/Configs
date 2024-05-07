return {
  {
    "themercorp/themer.lua", -- Multiple themes, including jellybeans
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load customized colorscheme
      vim.cmd([[colorscheme themer_jellybeans]])

      -- Custom colors for hlsearch
      vim.cmd([[highlight Search guifg=#43dede guibg=black]])
      vim.cmd([[highlight Search gui=underline guifg=#00dddd guibg=#302028]])
      vim.cmd([[highlight FoldColumn guifg=#535D66 guibg=#1f1f1f]])

      -- Custom color for CmpItemMenu
      vim.cmd([[highlight CmpItemMenu guifg=#fabada]])
    end,
  },

  {
    "NvChad/nvim-colorizer.lua", -- Highlight colors such as #ff0000
    lazy = false,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    lazy = false,
    opts = {
      indent = {
        char = "│",
        highlight = {
          "IndentBlanklineIndent1",
          "IndentBlanklineIndent2",
          "IndentBlanklineIndent3",
          "IndentBlanklineIndent4",
          "IndentBlanklineIndent5",
          "IndentBlanklineIndent6",
        },
      },
    },
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
    },
    config = function(_, opts)
      vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
      vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
      vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
      vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
      vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
      vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])
      require("ibl").setup(opts)
    end,

    keys = {
      { "<leader>uI", "<cmd>IndentBlanklineToggle<cr>", { desc = "Toggle indent lines" } },
    },
  },

  {
    "p00f/nvim-ts-rainbow", -- Rainbow braces
    lazy = false,
  },

  {
    "azabiong/vim-highlighter", -- Highlight specific words
  },
}
