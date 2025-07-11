return {
  -- Telescope for fuzzy finding
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.8",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup()
    end,
  },

  -- Cheatsheet integration
  {
    "sudormrfbin/cheatsheet.nvim",
    cmd = "Cheatsheet",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("cheatsheet").setup({})
    end,
  },

  -- Treesitter for syntax highlighting and more
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "python", "javascript" },
        highlight = { enable = true },
      })
    end,
  },
  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },

  -- Harpoon for quick file navigation
  {
    "theprimeagen/harpoon",
    keys = { "<leader>hm", "<leader>ht" },
    config = function()
      require("harpoon").setup({})
    end,
  },

  -- Undo tree visualizer
  { "mbbill/undotree", cmd = "UndotreeToggle" },

  -- Git integration
  { "tpope/vim-fugitive", cmd = { "Git", "Gstatus", "Gblame" } },

  -- Mason for managing LSP/DAP installers
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUninstall" },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
  },

  -- Built-in LSP configuration
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lsp = require("lspconfig")
      lsp.pyright.setup({})
    end,
  },

  -- Autocompletion setup
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = { expand = function(args) require("luasnip").lsp_expand(args.body) end },
        mapping = cmp.mapping.preset.insert({ ["<C-Space>"] = cmp.mapping.complete() }),
        sources = cmp.config.sources({ { name = "nvim_lsp" }, { name = "luasnip" } }),
      })
    end,
  },

  -- File icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- UI enhancements
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  { "MunifTanjim/nui.nvim", event = "VeryLazy" },

  -- Markdown rendering
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    config = function()
      require("render_markdown").setup()
    end,
  },

  -- Fuzzy find and replace tool
  { "MagicDuck/grug-far.nvim", cmd = "GrugFar", config = function() require("grug-far").setup({}) end },

  -- Incremental rename
  { "smjonas/inc-rename.nvim", cmd = "IncRename", config = function() require("inc_rename").setup() end },

  -- Image clipboard integration
  { "HakonHarnes/img-clip.nvim", cmd = "PasteImg" },
}

