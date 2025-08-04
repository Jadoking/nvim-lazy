return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "soft"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_diagnostic_text_highlight = 1
      vim.g.everforest_diagnostic_line_highlight = 1
      vim.g.everforest_diagnostic_virtual_text = "colored"
      vim.g.everforest_transparent_background = 1

      vim.cmd("colorscheme everforest")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.8",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({})
      vim.api.nvim_create_autocmd("User", {
        pattern = "TelescopePreviewerLoaded",
        callback = function()
          local accent = "#7fbbb3"
          local hl = vim.api.nvim_set_hl

          hl(0, "TelescopeNormal", { bg = "none" })
          hl(0, "TelescopeBorder", { fg = accent, bg = "none" })
          hl(0, "TelescopePromptNormal", { bg = "none" })
          hl(0, "TelescopePromptBorder", { fg = accent, bg = "none" })
          hl(0, "TelescopePromptTitle", { fg = accent, bg = "none" })
          hl(0, "TelescopeResultsNormal", { fg = accent, bg = "none" })
          hl(0, "TelescopeResultsBorder", { fg = accent, bg = "none" })
          hl(0, "TelescopeResultsTitle", { fg = accent, bg = "none" })
          hl(0, "TelescopePreviewNormal", { bg = "none" })
          hl(0, "TelescopePreviewBorder", { fg = accent, bg = "none" })
          hl(0, "TelescopePreviewTitle", { fg = accent, bg = "none" })
          hl(0, "TelescopeSelection", { fg = accent, bg = "none", bold = true })
          hl(0, "TelescopeMatching", { fg = "#83c092", bg = "none", bold = true })
        end,
      })
    end,
  },
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
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "python", "javascript", "typescript" },
        highlight = { enable = true },
      })
    end,
  },
  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    keys = { "<leader>hm", "<leader>ht" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
  },
  { "mbbill/undotree",            cmd = "UndotreeToggle" },
  { "tpope/vim-fugitive",         cmd = { "Git", "Gstatus", "Gblame" } },
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
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "stevearc/dressing.nvim",      event = "VeryLazy" },
  { "MunifTanjim/nui.nvim",        event = "VeryLazy" },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    config = function()
      require("render_markdown").setup()
    end,
  },
  { "MagicDuck/grug-far.nvim",   cmd = "GrugFar",   config = function() require("grug-far").setup({}) end },
  { "smjonas/inc-rename.nvim",   cmd = "IncRename", config = function() require("inc_rename").setup() end },
  { "HakonHarnes/img-clip.nvim", cmd = "PasteImg" },
}
