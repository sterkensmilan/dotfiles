return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {"github/copilot.vim", lazy = false},

  {
    "francoiscabrol/ranger.vim", lazy = false,
  },

  {"rbgrouleff/bclose.vim", lazy = false,},

  {"tpope/vim-fugitive", lazy = false,},

  {"subnut/nvim-ghost.nvim", lazy = false,},

  {"rodjek/vim-puppet", lazy = false,},

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
