local neogit = require('neogit')

neogit.setup {
	mappings = {
    -- modify status buffer mappings
    status = {
      -- Adds a mapping with "B" as key that does the "BranchPopup" command
      ["B"] = "BranchPopup",
    }
  }
}
