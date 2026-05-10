vim.pack.add({ "https://github.com/folke/zen-mode.nvim" })
require("zen-mode").setup({})
vim.keymap.set("n", "<leader>z", function()
    require("zen-mode").toggle({
        window = {
            backdrop = 1,
            width = 120,
            height = 1,
        },
        on_open = function(win)
            vim.opt.colorcolumn = {}
        end,
        on_close = function()
            vim.opt.colorcolumn = "100"
        end,
    })
end, { desc = "Toggle Zen Mode" })
