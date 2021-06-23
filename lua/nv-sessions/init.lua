-- require('telescope').load_extension('zessions.lua')
-- require('telescope').load_extension('session_manager')
-- vim.g.autosave_last_session = true
-- vim.g.autoload_last_session = false

-- Session Lens
require("telescope").load_extension("session-lens")

local opts = {
  log_level = 'info',
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = false,
  -- auto_session_suppress_dirs = nil
}

require('auto-session').setup(opts)