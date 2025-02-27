-- stuff that really doesnt deserve its own file

return {
  {
    "nvzone/timerly",
    dependencies = {
      "nvzone/volt",
    },
    keys = {
      {
        "<leader>tc",
        ":TimerlyToggle<CR>",
        desc = "Toggle mini.files (Directory of Current File)",
      },
    },
  },
  { "linux-cultist/venv-selector.nvim", enabled = true },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
