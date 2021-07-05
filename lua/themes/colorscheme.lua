vim.cmd('let g:nvcode_termcolors=256')

vim.cmd('colorscheme ' .. O.colorscheme)
vim.o.background = O.background

local colors = require("themes.gruvbox")

return colors 
