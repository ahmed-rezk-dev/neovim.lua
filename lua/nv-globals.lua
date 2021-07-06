O = {
    auto_close_tree = 0,
    auto_complete = true,
    colorscheme = 'gruvbox',
	background = 'dark',
    hidden_files = true,
    wrap_lines = false,
    number = true,
    relative_number = true,
    shell = 'bash',
    plugin = {
    -- TODO remove non built-ins
    -- Builtins
    dashboard = { active = false },
    colorizer = { active = false },
    zen = { active = false },
    ts_playground = { active = false },
    ts_context_commentstring = { active = false },
    ts_hintobjects = { active = false },
    ts_textobjects = { active = false },
    ts_textsubjects = { active = false },
    telescope_fzy = { active = false },
    telescope_project = { active = false },
    indent_line = { active = false },
    symbol_outline = { active = false },
    debug = { active = false },
    dap_install = { active = false },
    lazygit = { active = false },
    lush = { active = false },
    diffview = { active = false },

    ----------------------------------------------------------------------
    -- Non builtins

    octo = { active = false },
    gitlinker = { active = false },
    todo_comments = { active = false },
    gist = { active = false },
    git_blame = { active = false },
    lsp_colors = { active = false },
    ranger = { active = false },
    hop = { active = false },
    dial = { active = false },
    matchup = { active = false },
    numb = { active = false },
    bqf = { active = false },
    trouble = { active = false },
    floatterm = { active = false },
    spectre = { active = true },
    lsp_rooter = { active = false },
    markdown_preview = { active = false },
    bracey = { active = false },
    codi = { active = false },
    sanegx = { active = false },
    snap = { active = false },
    tabnine = { active = false },
  },

    -- @usage pass a table with your desired languages
    treesitter = {
        ensure_installed = "all",
        ignore_install = {"haskell"},
        highlight = {enabled = true},
        playground = {enabled = true},
        rainbow = {enabled = false}
    },

    database = {save_location = '~/.config/nvcode_db', auto_execute = 1},
    python = {
        linter = '',
        -- @usage can be 'yapf', 'black'
        formatter = '',
        autoformat = false,
        isort = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    dart = {sdk_path = '/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot'},
    lua = {
        -- @usage can be 'lua-format'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    sh = {
        -- @usage can be 'shellcheck'
        linter = '',
        -- @usage can be 'shfmt'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    tsserver = {
        -- @usage can be 'eslint'
        linter = 'eslint',
        -- @usage can be 'prettier'
        formatter = 'prettier',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    json = {
        -- @usage can be 'prettier'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    tailwindls = {filetypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue', 'twig'}},
    clang = {diagnostics = {virtual_text = true, signs = true, underline = true}}
    -- css = {formatter = '', autoformat = false, virtual_text = true},
    -- json = {formatter = '', autoformat = false, virtual_text = true}
}

DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

