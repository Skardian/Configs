return {
  "tpope/vim-unimpaired", -- Additional ][ mappings

  "christoomey/vim-sort-motion", -- gs to sort things
  {
    "AndrewRadev/switch.vim",
    init = function()
      vim.g.switch_mapping = "-"
    end,
  },
  {
    "arsham/indent-tools.nvim",
    dependencies = {
      "arsham/arshlib.nvim",
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = true,
    -- keys = { "]i", "[i", { "v", "ii" }, { "o", "ii" } },
  },

  {
    "junegunn/vim-easy-align", -- gs to sort things
    keys = {
      { "ga", "<Plug>(EasyAlign)", desc = "Easy Align" },
    },
  },

  {
    "max397574/better-escape.nvim",
    opts = {
      mapping = { "jk", "kj" }, -- a table with mappings to use
    },
  },
}
