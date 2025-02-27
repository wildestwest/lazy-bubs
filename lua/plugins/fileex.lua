local minifiles_toggle = function(...)
  if not MiniFiles.close() then
    MiniFiles.open(...)
  end
end

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
    keys = {
      {
        "<leader>e",
        function()
          minifiles_toggle(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Toggle mini.files (Directory of Current File)",
      },
    },
  },
}
