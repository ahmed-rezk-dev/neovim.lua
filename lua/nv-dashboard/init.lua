vim.g.dashboard_custom_header = {
'                                      ▐▀█ █▓▄█▀▄',
'                                      █ █▐▌ █▌ █',
'                                      █  ▀▀   ▄▌',
'                                       ▀▄▄▀▀ ▀',
'                                           ▓▀▌         ▄▓          ▄',
'                           ▄             ▄▀  ▌       ▄▀  ▌        █ ▌',
'                         ▄█ █           ▓    ▌      ▓    █      ▄▀  █',
'                        ▓▀  ▐▌          ▌    █     █     ▐     ▓    ▐',
'                       ▓     ▌          █    █     █      ▌   ▐▌    ▐▌',
'                   ▄▄▀▀      ▌          ▓    █     ▐▌     █    █     █',
'               ▄▀▀     ▄▌    ▌          ▐▌   ▐      █     █    █     █',
'            ▄▀       ▄▀ █    █           █    █     ▐     █    ▐     █',
'           █      ▓█▄▄▄▄█    █           █    ▐▌     ▌    █     ▌    █',
'          █                   ▀▀▄▄▄▄▄▄▄▄▄▓      ▀▄▄ ▄█    █     █    █',
'         ▐             ▄█▌                                ▌     ▓    ▌',
'         █▄▄▄         ▓▀ ▓                █▄             █      ▐▀  █',
'                 ▀▀▀▀▀    ▀▄             █ ▀▌         ▄▓▀        █ █',
'                             ▀▀▀▀▀▀▀▀▀▀▀      ▀▀▀▀▀▀▀            ▀▀',
   
}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Sessions           '}, command = ":lua require('telescope').extensions.zessions.sessions()"},
    b = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    c = {description = {'  Find File          '}, command = 'Telescope find_files'},
    d = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    e = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    f = {description = {'  Marks              '}, command = 'Telescope marks'},
    z = {description = {'  Settings           '}, command = ':e ~/.config/nvim/nv-settings.lua'},
}

-- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},

-- vim.g.dashboard_custom_shortcut = {
--     a = 'f',
--     find_word = 'SPC f a',
--     last_session = 'SPC s l',
--     new_file = 'SPC c n',
--     books_marks = 'SPC f b',
--     bookr_marks = 'SPC f b',
--     booke_marks = 'SPC f b'
-- }
-- find_history = 'SPC f h',

vim.g.dashboard_session_directory = '~/.cache/nvim/session'
vim.g.dashboard_custom_footer = {'Welcome back Ahmed Rezk 🙃'}