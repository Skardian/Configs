return {
  "APZelos/blamer.nvim",
  config = function()
    vim.g.blamer_relative_time = 1
    vim.g.blamer_delay = 300
    vim.g.blamer_enabled = 0
  end,

  keys = {
    { "<leader>ub", "<cmd>BlamerToggle<cr>", desc = "Toggle git blame" },
  },
}
