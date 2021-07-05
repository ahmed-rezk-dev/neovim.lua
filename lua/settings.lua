local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end

vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
opt("o", "hidden", O.hidden_files) -- Required to keep multiple buffers open multiple buffers
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.wo.wrap = O.wrap_lines -- Display long lines as just one line
vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
vim.cmd('syntax on') -- move to next line with theses keys
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.cmd('set colorcolumn=99999') -- fix indentline for now
opt("o", "mouse", "a") -- Enable your mouse
opt("o", "splitbelow", true) -- Horizontal splits will automatically be below
opt("o", "splitright", true)  -- Vertical splits will automatically be to the right
opt("o", "termguicolors", true) -- set term giu colors most terminals support this
-- vim.o.t_Co = "256" -- Support 256 colors SHOWS ERROR
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
-- for indenline
opt("b", "expandtab", true) -- Converts tabs to spaces
opt("b", "smartindent", true) -- Makes indenting smart
opt("b", "shiftwidth", 2)
opt("w", "foldmethod", 'indent')

opt("w", "number", O.number) -- set numbered lines
opt("o", "numberwidth", 2)
vim.wo.relativenumber = O.relative_number -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
opt("w", "signcolumn", "yes") -- Always show the signcolumn, otherwise it would shift the text each time
opt("o", "updatetime", 250) -- Faster completion -- update interval for gitsigns
vim.o.timeoutlen = 100 -- By default timeoutlen is 1000 ms
opt("o", "clipboard", "unnamedplus") -- Copy paste between vim and everything else
vim.o.guifont = "FiraCode Nerd Font Mono:13"
vim.cmd('set shell=/bin/zsh')
-- vim.cmd('set shell=~/.zshrc')

-- To disable swap files
vim.cmd('set noswapfile')


-- vim.o.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"

-- creates an auto command
-- function autocmd(cmd)
--     vim.cmd('autocmd '..cmd)
-- end

-- -- creates an auto group
-- function augroup(autocmd, name)
--     name = name or 'end'
--     vim.api.nvim_exec('augroup '..name..' \nautocmd!\n'..autocmd..'\naugroup end', false)
-- end

-- augroup 'VimEnter * :BookmarkToggle'
-- vim.api.nvim_exec([[
--   augroup Bookmark
--     autocmd!
--     autocmd VimEnter * BookmarkLoad ./.vim-bookmarks
--   augroup end
-- ]], false)

-- vim.api.nvim_exec([[
--   augroup Bookmark
--     autocmd!
--     autocmd VimLeave * BookmarkSave ./.vim-bookmarks
--   augroup end
-- ]], false)

vim.api.nvim_exec([[
    augroup Bookmark
    autocmd!
    autocmd VimEnter * silent! BookmarkLoad ./.vim-bookmarks
    autocmd VimLeave * silent! BookmarkSave ./.vim-bookmarks
    autocmd BufWinEnter *.* silent! BookmarkSave ./.vim-bookmarks
    autocmd BufWinLeave *.* silent! BookmarkSave ./.vim-bookmarks
    augroup END 
]], false)

opt("o", "cmdheight", 1) -- to remove extra line at the bottom
opt("o", "timeoutlen", 300) -- set time between keys pressing
opt("o", "ignorecase", true)
opt("w", "cul", true)

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)


local M = {}

function M.is_buffer_empty()
    -- Check whether the current buffer is empty
    return vim.fn.empty(vim.fn.expand("%:t")) == 1
end

function M.has_width_gt(cols)
    -- Check if the windows width is greater than a given number of columns
    return vim.fn.winwidth(0) / 2 > cols
end
-- file extension specific tabbing
vim.cmd([[autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4]])
return M

