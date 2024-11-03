return {
  {
    "zyedidia/vim-snake",
  },
  {
    "ThePrimeagen/vim-be-good",
  },
  { "nvchad/volt", lazy = true },

  {
    "nvchad/minty",
    cmd = { "Shades", "Huefy" },
  },
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "llama3.2", -- The default model to use.
    },
  },
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("nvim-silicon").setup({
        font = "JetBrainsMono Nerd Font=34; Noto Color Emoji=34",
      })
    end,
  },
}
