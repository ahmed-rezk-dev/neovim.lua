-- It's in Lua and use Telescope (+plenary). #TT
-- https://gitlab.com/raz13l/zessions/-/blob/master/lua/telescope/_extensions/zessions.lua
-- The main goal of this plugin is to have an easier session files management by using Telescope dropdown.
-- There is no other features like auto-restoring/auto-saving, etc... but it might be available later.
-- - You save a session by typing its name in the input field and pressing Ctrl+s (insert mode)
-- - You delete a session by selecting an entry and pressing Ctrl+d (insert mode)
-- - You restore a session by selecting an entry an pressing enter
-- No documentation yet but I'm working on it !

local zessions = require('telescope').extensions.zessions
zessions.setup({cwd = "~/.cache/zessions", ask = false})

-- zessions.sessions({
--     find_command = {'fd', '-t', 'f', '-e', 'vim'}, -- override default command
--     width = 50,   -- set dropdown popup width
-- })