vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })

vim.cmd("colorscheme miniwinter")
local statusline = require("mini.statusline")
statusline.setup({ use_icons = vim.g.have_nerd_font })
statusline.section_location = function()
    return "%2l:%-2v"
end

-- local pick = require("mini.pick")
-- pick.setup({
--     mappings = {
--         move_down = "<C-j>",
--         move_up = "<C-k>",
--
--         caret_left = "<C-h>",
--         caret_right = "<C-l>",
--
--         scroll_left = "<Left>",
--         scroll_right = "<Right>",
--         scroll_up = "<Up>",
--         scroll_down = "<Down>",
--     },
--     source = { show = pick.default_show },
-- })
-- vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "[S]earch [F]iles" })
-- vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep_live<CR>", { desc = "[S]earch [G]rep" })
-- vim.keymap.set("n", "<leader>sh", "<CMD>Pick help<CR>", { desc = "[S]earch [H]elp" })
-- vim.keymap.set("n", "<leader>sr", "<CMD>Pick resume<CR>", { desc = "[S]earch [R]esume" })
