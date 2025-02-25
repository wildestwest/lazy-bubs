return {
  { "nvzone/timerly", dependencies = {
    "nvzone/volt",
  } },
  { "linux-cultist/venv-selector.nvim", enabled = true },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
