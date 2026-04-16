return {
    { -- Collection of various small independent plugins/modules
        "nvim-mini/mini.nvim",
        config = function()
            vim.cmd("colorscheme minisummer")
            -- Better Around/Inside textobjects
            --
            -- Examples:
            --  - va)  - [V]isually select [A]round [)]paren
            --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
            --  - ci'  - [C]hange [I]nside [']quote
            require("mini.ai").setup({ n_lines = 500 })

            -- Add/delete/replace surroundings (brackets, quotes, etc.)
            --
            -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
            -- - sd'   - [S]urround [D]elete [']quotes
            -- - sr)'  - [S]urround [R]eplace [)] [']
            require("mini.surround").setup()

            -- Simple and easy statusline.
            --  You could remove this setup call if you don't like it,
            --  and try some other statusline plugin
            local statusline = require("mini.statusline")
            -- set use_icons to true if you have a Nerd Font
            statusline.setup({ use_icons = vim.g.have_nerd_font })

            -- You can configure sections in the statusline by overriding their
            -- default behavior. For example, here we set the section for
            -- cursor location to LINE:COLUMN
            ---@diagnostic disable-next-line: duplicate-set-field
            statusline.section_location = function()
                return "%2l:%-2v"
            end

            local pick = require("mini.pick")
            pick.setup({ source = { show = pick.default_show } })
            vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "[S]earch [F]iles" })
            vim.keymap.set(
                "n",
                "<leader>sg",
                "<CMD>Pick grep_live<CR>",
                { desc = "[S]earch [G]rep" }
            )
            vim.keymap.set("n", "<leader>sh", "<CMD>Pick help<CR>", { desc = "[S]earch [H]elp" })
            vim.keymap.set(
                "n",
                "<leader>sr",
                "<CMD>Pick resume<CR>",
                { desc = "[S]earch [R]esume" }
            )
        end,
    },
}
