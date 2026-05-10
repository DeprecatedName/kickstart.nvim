vim.api.nvim_create_user_command("PackUpdate", function()
    vim.pack.update()
end, { desc = "Update all plugins" })


vim.api.nvim_create_user_command("PackDelete", function(opts)
    vim.pack.del(opts.fargs)
end, { nargs = "+", desc = "Delete plugins (space separated)" })


local function run_build(name, cmd, cwd)
    local result = vim.system(cmd, { cwd = cwd }):wait()
    if result.code ~= 0 then
      local stderr = result.stderr or ''
      local stdout = result.stdout or ''
      local output = stderr ~= '' and stderr or stdout
      if output == '' then output = 'No output from build command.' end
      vim.notify(('Build failed for %s:\n%s'):format(name, output), vim.log.levels.ERROR)
    end
end


vim.api.nvim_create_user_command("PackCheck", function()
    local inactive = vim.iter(vim.pack.get())
        :filter(function(x) return not x.active end)
        :map(function(x) return x.spec_name end)
        :totable()

    if #inactive == 0 then
        vim.notify("All plugins active!", vim.log.levels.INFO)
        return
    end

    print("Inactive plugins:")
    print("")
    for _, name in ipairs(inactive) do
        print(name)
    end

    local choice = vim.fn.confirm("Delete all inactive plugins?", "&Yes\n&No", 2)

    if choice == 1 then
        vim.pack.del(inactive)
        vim.notify("Deleted " .. #inactive .. " plugin(s).", vim.log.levels.INFO)
        vim.api.nvim_exec_autocmds("User", { pattern = "PackChanged" })
    else
        vim.notify("Deletion cancelled.", vim.log.levels.INFO)
    end

end, { desc = "List inactive plugins, and choose to delete" })


vim.api.nvim_create_autocmd('PackChanged', {
    callback = function(ev)
      local name = ev.data.spec.name
      local kind = ev.data.kind
      if kind ~= 'install' and kind ~= 'update' then return end

      if name == 'telescope-fzf-native.nvim' and vim.fn.executable 'make' == 1 then
        run_build(name, { 'make' }, ev.data.path)
        return
      end
    end,
})


-- require("guess-indent")
require("plugins.which-key")
require("plugins.telescope")
require("plugins.lspconfig")
require("plugins.conform")
require("plugins.mini")
require("plugins.oil")
require("plugins.zen-mode")
