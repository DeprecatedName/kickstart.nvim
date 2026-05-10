vim.pack.add({ "https://github.com/stevearc/oil.nvim" })

require("oil").setup({
    columns = {
        -- "icon",
        "permissions",
        "size",
        "mtime",
    },
    delete_to_trash = true,
})
