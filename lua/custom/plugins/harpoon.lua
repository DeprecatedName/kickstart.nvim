return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependncies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local harpoon = require("harpoon")

            -- Required because of autocmds
            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function()
                harpoon:list():add()
            end, { desc = "Add to Harpoon" })
            vim.keymap.set("n", "<C-e>", function()
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end)

            vim.keymap.set("n", "<C-h>", function()
                harpoon:list():select(1)
            end)
            vim.keymap.set("n", "<C-j>", function()
                harpoon:list():select(2)
            end)
            vim.keymap.set("n", "<C-k>", function()
                harpoon:list():select(3)
            end)
            vim.keymap.set("n", "<C-l>", function()
                harpoon:list():select(4)
            end)

            -- Toggle previous and next buffers stored within Harpoon list
            vim.keymap.set("n", "<C-S-P>", function()
                harpoon:list():prev()
            end)
            vim.keymap.set("n", "<C-S-O>", function()
                harpoon:list():next()
            end)
        end,
    },
}

-- vim: ts=4 sts=4 sw=4 et
