return {
  -- "stevearc/oil.nvim",
  -- opts = {
  --   view_options = {
  --     show_hidden = true, -- Enable hidden files
  --   },
  -- },
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  {
    "echasnovski/mini.files",
    version = "*",
    lazy = false,
    dependencies = { "echasnovski/mini.nvim" },
    config = function()
      require("mini.files").setup()
    end,
  },
}
