return {
  -- Other plugins...

  -- Dependencies
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim" },

  -- Telescope Media Files extension
  {
    "nvim-telescope/telescope-media-files.nvim",
    config = function()
      require("telescope").load_extension("media_files")
    end,
  },
}
