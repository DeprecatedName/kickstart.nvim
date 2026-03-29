-- [[ Install plugins ]]

require("lazy").setup({
    require("plugins.which-key"),

    require("plugins.telescope"),

    require("plugins.lspconfig"),

    require("plugins.conform"),

    require("plugins.tokyonight"),

    require("plugins.mini"),

    require("plugins.treesitter"),

    require("plugins.oil"),

    -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
    -- Or use telescope!
    -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
    -- you can continue same window with `<space>sr` which resumes last telescope search
}, { ---@diagnostic disable-line: missing-fields
    ui = {
        icons = vim.g.have_nerd_font and {} or {
            cmd = "⌘",
            config = "🛠",
            event = "📅",
            ft = "📂",
            init = "⚙",
            keys = "🗝",
            plugin = "🔌",
            runtime = "💻",
            require = "🌙",
            source = "📄",
            start = "🚀",
            task = "📌",
            lazy = "💤 ",
        },
    },
})
