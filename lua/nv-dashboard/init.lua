function get_last_session()
  local most_recent_session = {timestamp = 0, filename = nil}

  if vim.fn.isdirectory(vim.g.sessions_dir) ~= 1 then
    return most_recent_session
  end

  for _, session_filename in ipairs(vim.fn.readdir(vim.g.sessions_dir)) do
    if vim.fn.isdirectory(utils.session_name_to_path(session_filename)) == 1 then
      local timestamp = vim.fn.getftime(vim.g.sessions_dir .. session_filename)
      if most_recent_session.timestamp < timestamp then
        most_recent_session.timestamp = timestamp
        most_recent_session.filename = session_filename
      end
    end
  end
  return most_recent_session
end

local last_session = get_last_session()

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
    -- a = {description = {'  Sessions           '}, command = ":lua require('telescope').extensions.zessions.sessions()"},
    -- a = {description = {'  Sessions           '}, command = "Telescope session_manager load"},
    a = {description = {'  Sessions           '}, command = "Telescope session-lens search_session"},
    -- b = {description = {'  Load Last Session  '}, command = 'RestoreSession'},
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