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
vim.keymap.set("n", "<leader>e", ":lua MiniFiles.open()<CR>", { desc = "Open Mini Files" })
-- open terminal
local term_job_id = 0
vim.keymap.set("n", "<leader>TT", function()
  -- vim.cmd.vnew()
  vim.cmd("ToggleTerm direction=vertical")
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
-- Map <Esc> to exit terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

-- Toggleterm specifically
function _G.set_terminal_keymaps()
  -- Exit terminal mode
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { buffer = 0 })
  -- Terminal window navigation
  vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], { buffer = 0 })
  vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], { buffer = 0 })
  vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], { buffer = 0 })
  vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], { buffer = 0 })
end
-- Auto-apply terminal keymaps when Toggleterm opens
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
vim.keymap.set("n", "<leader>Tp", function()
  vim.fn.chansend(term_job_id, "python -m pytest\n")
end, {
  noremap = true,
  desc = "pytest",
})

vim.keymap.set("n", "<leader>tc", ":TimerlyToggle<CR>", { desc = "toggle timer" })

vim.keymap.set({ "n", "v" }, "<Del>", [["_d]], { desc = "Delete to void buffer" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "copy to sys" })

vim.keymap.set({ "t", "n" }, "<leader>k", "<cmd>Floakube<CR>")

-- vim.keymap.set({ "n", "v" }, "<leader>yc", [["cy]], { desc = "Delete to void buffer" })
-- vim.keymap.set({ "n", "v" }, "<leader>yi", [["iy]], { desc = "Delete to void buffer" })
-- vim.keymap.set({ "n", "v" }, "<leader>ye", [["ey]], { desc = "Delete to void buffer" })
-- vim.keymap.set({ "n", "v" }, "<leader>ya", [["ay]], { desc = "Delete to void buffer" })

-- Default keymaps to remove
