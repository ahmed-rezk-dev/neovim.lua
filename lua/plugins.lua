-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

local my = function(file) require(file) end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use 'wbthomason/packer.nvim'

    -- Information
    -- use 'nanotee/nvim-lua-guide'

    -- Quality of life improvements
    -- use 'norcalli/nvim_utils'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'mfussenegger/nvim-jdtls'
    use 'kabouzeid/nvim-lspinstall'

    -- Debugging
      use {
        "mfussenegger/nvim-dap",
        config = function()
          require "dap"
          vim.fn.sign_define("DapBreakpoint", {
            text = "",
            texthl = "LspDiagnosticsSignError",
            linehl = "",
            numhl = "",
          })
          require("dap").defaults.fallback.terminal_win_cmd = "50vsplit new"
        end,
        disable = not O.plugin.debug.active,
      }

    -- Autocomplete
    use 'hrsh7th/nvim-compe'
    use 'mattn/emmet-vim'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use "rafamadriz/friendly-snippets"
    use 'ChristianChiarulli/html-snippets'
	use {'tzachar/compe-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-compe'}
    

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'p00f/nvim-ts-rainbow'
    use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
    use 'nvim-treesitter/playground'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'windwp/nvim-ts-autotag'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    -- Status Line and Bufferline
    use { 'glepnir/galaxyline.nvim' }
    -- use { 'glepnir/galaxyline.nvim', config = function() require'nv-galaxyline' end } -- inline fn alternative
    use 'romgrk/barbar.nvim'
	-- use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

    -- Session manager
    use 'rmagatti/auto-session'
    use {
      'rmagatti/session-lens',
      requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    }
    use 'https://github.com/Shatur/neovim-session-manager'


    -- Explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Seesion manager
    -- use 'https://gitlab.com/raz13l/zessions'

    -- Color
    -- use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'morhetz/gruvbox'
    use 'norcalli/nvim-colorizer.lua'
    use 'sheerun/vim-polyglot'


	-- Syntax
    use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- Git
    -- use 'TimUntersberger/neogit'
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use 'f-person/git-blame.nvim'
    -- use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
	use 'TimUntersberger/neogit'

    -- Easily Create Gists
    use 'mattn/vim-gist'
    use 'mattn/webapi-vim'

    -- Webdev
    -- TODO add back when I learn it better 
    -- use 'gennaro-tedesco/nvim-jqx'
    -- use 'turbio/bracey.vim'

    -- Php
    use 'phpactor/phpactor'

    -- Flutter
    use 'thosakwe/vim-flutter'

    -- Dependency assistent
    use 'akinsho/dependency-assist.nvim'

    -- Registers
    -- use 'gennaro-tedesco/nvim-peekup'

    -- Navigation
    use 'unblevable/quick-scope' -- hop may replace you
    use 'phaazon/hop.nvim'
    use 'kevinhwang91/rnvimr' -- telescope may fully replace you

    -- General Plugins
    -- use 'liuchengxu/vim-which-key'
	use "folke/which-key.nvim"
    use 'kevinhwang91/nvim-bqf'
    use 'airblade/vim-rooter'
    -- use 'ChristianChiarulli/dashboard-nvim'
    use 'metakirby5/codi.vim'
    use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
    use 'voldikss/vim-floaterm'
    use 'terrortylor/nvim-comment'
    use 'monaqa/dial.nvim'
    use 'junegunn/goyo.vim'
    use 'andymass/vim-matchup'
    use 'MattesGroeger/vim-bookmarks'
    use 'windwp/nvim-autopairs'
    use 'mbbill/undotree'
	use 'nacro90/numb.nvim'
	use 'turbio/bracey.vim'

    -- Database
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    use 'kristijanhusak/vim-dadbod-completion'

    -- Documentation Generator
    use {'kkoomen/vim-doge', run = ':call doge#install()'}

    -- TODO put this back when stable for indent lines
    -- vim.g.indent_blankline_space_char = ''
    -- use 'b3nj5m1n/kommentary'
    -- use {
    --     'glacambre/firenvim',
    --     run = function()
    --         vim.fn['firenvim#install'](1)
    --     end
    -- }
    use 'glepnir/dashboard-nvim'
    -- use 'mhinz/vim-startify'
    -- use 'cstrap/python-snippets'
    -- use 'ylcnfrht/vscode-python-snippet-pack'
    -- use 'norcalli/snippets.nvim'
    -- use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
    -- use 'SirVer/ultisnips'
    -- use 'honza/vim-snippets'
    -- vim.g.UltiSnipsExpandTrigger="<CR>"
    -- vim.g.UltiSnipsJumpForwardTrigger="<Tab>"
    -- vim.g.UltiSnipsJumpBackwardTrigger="<S-Tab>"
    -- use 'blackcauldron7/surround.nvim'
    -- use 'ChristianChiarulli/java-snippets'
    -- use 'xabikos/vscode-javascript'
    use 'dsznajder/vscode-es7-javascript-react-snippets'
    -- use 'golang/vscode-go'
    -- use 'rust-lang/vscode-rust'
    -- use 'ChristianChiarulli/python-snippets'
    -- use 'kshenoy/vim-signature'
    -- use 'nelstrom/vim-visual-star-search'
    -- TODO switch back when config support snips
    -- use 'cohama/lexima.vim'
    -- use 'bfredl/nvim-miniyank'
    -- use 'brooth/far.vim'
    -- use 'liuchengxu/vista.vim'
    -- use 'psliwka/vim-smoothie'
    -- use 'nvim-treesitter/nvim-treesitter-refactor'
    -- use 'nvim-treesitter/playground'
    -- use 'moll/vim-bbye'

	-- Trouble
	use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
       require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    	}
      end
	}
    -- Floating terminal
    use {
        "numToStr/FTerm.nvim",
        event = "BufRead",
        config = function()
          require("FTerm").setup {
            dimensions = { height = 0.8, width = 0.8, x = 0.5, y = 0.5 },
            border = "single", -- or 'double'
          }
        end,
        disable = not O.plugin.floatterm.active,
    }
    -- Search & Replace
    use {
        "windwp/nvim-spectre",
        event = "BufRead",
        config = function()
          require("spectre").setup()
        end,
        disable = not O.plugin.spectre.active,
    }
end)
