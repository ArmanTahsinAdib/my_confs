return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        float_opts = {
          border = "curved",
          height = 20,
          zindex = 1000,
          title_pos = "center",
        },
      })
    end,
  },
  { "CRAG666/code_runner.nvim", config = true },
}
