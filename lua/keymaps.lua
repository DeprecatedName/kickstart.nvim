--[[ Keymaps ]]
-- With netrw
-- vim.keymap.set("n", "-", vim.cmd.Ex, { desc = "Explore" })
-- With oil.nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Oil" })
-- Dragging lines in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Keep cursor in the middle when half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy into system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy into system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy line into system clipboard" })
vim.keymap.set("n", "<leader>pp", '"+p', { desc = "Paste from system clipboard" })
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>rs", "<cmd>restart<CR>", { desc = "Restart Neovim" })
