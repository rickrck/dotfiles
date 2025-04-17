return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    opts = {
      inlay_hints = { enabled = true },
    },
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function()
      require "configs.discord"
    end,
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.hlchunk"
    end,
  },

  {
    "akinsho/flutter-tools.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional: UI enhancement for Flutter tools
    },
    config = function()
      require("flutter-tools").setup {} -- Use the default configuration
    end,
  },

  -- {
  --   "github/copilot.vim",
  --   lazy = false,
  --   config = function() -- Mapping tab is already used by NvChad
  --     vim.keymap.set("i", "<C-a>", 'copilot#Accept("\\<CR>")', {
  --       expr = true,
  --       replace_keycodes = false,
  --     })
  --     vim.g.copilot_no_tab_map = true
  --     vim.g.copilot_assume_mapped = true
  --     vim.g.copilot_tab_fallback = ""
  --     -- The mapping is set to other key, see custom/lua/mappings
  --     -- or run <leader>ch to see copilot mapping section
  --   end,
  -- },

  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  {
    "nvim-zh/colorful-winsep.nvim",
    config = function()
      require "configs.colorful-winsep"
    end,
    event = { "WinLeave" },
  },

  {
    "hedyhli/outline.nvim",
    lazy = false,
    config = function()
      vim.keymap.set("n", "<leader>lo", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
      require "configs.outline"
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
      require "configs.inline-diagnostic"
    end,
  },

  --   {
  --     'MeanderingProgrammer/render-markdown.nvim',
  --     dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  --     -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  --     -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  --     ---@module 'render-markdown'
  --     ---@type render.md.UserConfig
  --     -- opts = require "config.markdown",
  --     opts = {},
  -- }
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  { "rafamadriz/friendly-snippets" },

  {
    "felpafel/inlay-hint.nvim",
    event = "LspAttach",
    config = function()
      require "configs.inlay_hints"
    end,
  },
  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },
  {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  opts = {
    timeout = 1,
    maxkeys = 20,
    position = "bottom-right",
    -- more opts
    },
  },
  { "nvzone/volt" , lazy = true },
  { "nvzone/menu" , lazy = true },
}

