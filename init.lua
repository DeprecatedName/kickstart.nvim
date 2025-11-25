--[[
Lua
- https://learnxinyminutes.com/docs/lua/

- :help lua-guide
- https://neovim.io/doc/user/lua-guide.html

Neovim
- :Tutor
- :help
- <space>sh [s]earch the [h]elp documentation
- NOTE lines
- :checkhealth

--]]

require 'configs'

require 'keymaps'

require 'autocommands'

require 'lazy-bootstrap'

require 'lazy-plugins'

vim.loader.enable(false)

-- vim: ts=4 sts=4 sw=4 et
