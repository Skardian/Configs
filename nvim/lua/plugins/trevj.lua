return {
  "AckslD/nvim-trevJ.lua",

  keys = {
    {
      "<leader>J",
      function()
        require("trevj").format_at_cursor()
      end,
      desc = "Format",
    },
  },
}
