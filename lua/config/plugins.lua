-- lua/config/plugins.lua

-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Helper function to load plugin configuration
local function load_config(name)
  return function()
    require('plugins.' .. name)
  end
end

-- Setup plugins with lazy.nvim
require('lazy').setup({
  spec = {
    -- Core Plugins
    { "lunarvim/darkplus.nvim",                       config = load_config('colorscheme') },
    { "nvim-tree/nvim-web-devicons",                  event = "VeryLazy" },
    { "nvim-lua/plenary.nvim",                        event = "VeryLazy" },
    { "nvim-telescope/telescope-live-grep-args.nvim", event = "VeryLazy" },
    { "nvim-telescope/telescope.nvim",                dependencies = { "nvim-lua/plenary.nvim" },                                                        config = load_config('telescope') },
    { "nvim-telescope/telescope-fzf-native.nvim",     run = "make",                                                                                      event = "VeryLazy" },
    { "windwp/nvim-spectre",                          event = "VeryLazy",                                                                                config = load_config('spectre') },
    { "neovim/nvim-lspconfig",                        event = "VeryLazy",                                                                                config = load_config('lsp') },
    { "williamboman/mason.nvim",                      event = "VeryLazy",                                                                                config = load_config('mason') },
    { "williamboman/mason-lspconfig.nvim",            event = "VeryLazy" },
    { "nvim-treesitter/nvim-treesitter",              run = ":TSUpdate",                                                                                 event = "VeryLazy",                        config = load_config('treesitter') },
    { "nvim-treesitter/nvim-treesitter-context",      event = "VeryLazy",                                                                                config = load_config('treesitter-context') },
    { "dstein64/vim-startuptime",                     config = load_config('startuptime') },
    { 'mattn/efm-langserver',                         event = "VeryLazy",                                                                                config = load_config('efm') },

    -- File Explorer
    { "nvim-neo-tree/neo-tree.nvim",                  dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }, event = "VeryLazy" },

    -- Git Integration
    { 'kdheepak/lazygit.nvim',                        event = "VeryLazy",                                                                                config = load_config('lazygit') },

    -- Additional Plugins
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 100
      end,
      config = load_config('whichkey')
    },
    { "nvim-lualine/lualine.nvim",           dependencies = { "nvim-tree/nvim-web-devicons" }, event = "VeryLazy",                   config = load_config('lualine') },

    -- Editor
    { "lewis6991/gitsigns.nvim",             event = "BufRead",                                config = load_config('gitsigns') },
    { "numToStr/Comment.nvim",               event = "BufRead",                                config = load_config('comment') },
    { "windwp/nvim-autopairs",               event = "InsertEnter",                            config = load_config('autopairs') },
    { "lukas-reineke/indent-blankline.nvim", event = "BufRead",                                config = load_config('blankline') },
    { "folke/todo-comments.nvim",            event = "BufRead",                                config = load_config('todo-comments') },
    { "kyazdani42/nvim-tree.lua",            event = "VeryLazy",                               config = load_config('nvim-tree') },
    { "akinsho/bufferline.nvim",             dependencies = 'nvim-tree/nvim-web-devicons',     config = load_config('bufferline') },
    { "folke/persistence.nvim",              event = "BufReadPre",                             config = load_config('persistence') },
    { "gbprod/yanky.nvim",                   event = "VeryLazy",                               config = load_config('yanky') },
    { "windwp/nvim-ts-autotag",              event = "VeryLazy",                               config = load_config('autotag') },
    {
      "nvimdev/dashboard-nvim",
      dependencies = { { 'nvim-tree/nvim-web-devicons' } },
      event = 'VimEnter',
      config = load_config('dashboard')
    },

    -- UI and Appearance
    { "RRethy/vim-illuminate",    event = "BufRead",     config = load_config('illuminate') },
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
      },
      config = load_config('noice')
    },

    -- LSP Plugins
    { "hrsh7th/nvim-cmp",         event = "InsertEnter", config = load_config('nvim-cmp') },
    { "hrsh7th/cmp-nvim-lsp",     after = "nvim-cmp" },
    { "hrsh7th/cmp-buffer",       after = "nvim-cmp" },
    { "hrsh7th/cmp-path",         after = "nvim-cmp" },
    { "hrsh7th/cmp-cmdline",      after = "nvim-cmp" },
    { "onsails/lspkind-nvim",     after = "nvim-cmp" },
    { "L3MON4D3/LuaSnip",         after = "nvim-cmp" },
    { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
  }
})
