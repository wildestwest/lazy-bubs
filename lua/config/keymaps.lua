-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- move highlighted text with capital J K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Highlighted text" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Highlighted text" })

-- keep cursor where it is when J
vim.keymap.set("n", "J", "mzJ`z")

-- Cursor in middle when page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Cursor in middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.api.nvim_set_keymap(
  "n",
  "<leader>e",
  [[<cmd>lua require("oil").toggle_float()<CR>]],
  { noremap = true, silent = true, desc = "Toggle Oil float" }
)
-- open terminal
local term_job_id = 0
vim.keymap.set("n", "<leader>TT", function()
  -- vim.cmd.vnew()
  vim.cmd("ToggleTerm direction=vertical size=80")
  term_job_id = vim.bo.channel
end, {
  noremap = true,
  desc = "Open terminal",
})
vim.keymap.set("n", "<leader>Tv", function()
  vim.fn.chansend(term_job_id, "python -m venv env && source env/bin/activate\n")
end, {
  noremap = true,
  desc = "Python venv",
})
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<leader>Tp", function()
  vim.fn.chansend(term_job_id, "python -m pytest\n")
end, {
  noremap = true,
  desc = "pytest",
})

vim.keymap.set("n", "<leader>tc", ":TimerlyToggle<CR>", { desc = "toggle timer" })

-- Default keymaps to remove
