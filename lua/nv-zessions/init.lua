local zessions = require('telescope').extensions.zessions
zessions.setup({cwd = "~/.cache/zessions", ask = false})

-- zessions.sessions({
--     find_command = {'fd', '-t', 'f', '-e', 'vim'}, -- override default command
--     width = 50,   -- set dropdown popup width
-- })