return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "bash",
        "vue",
        "javascript",
        "typescript",
        "tsx",
        "markdown",
        "html",
        "css",
      },
      highlight = { enable = true },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "nvchad.configs.telescope"

      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<Esc>"] = require("telescope.actions").close,
      }

      return conf
    end,
  },

  -- Adding nvim-tree plugin
  {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons", -- for file icons
    tag = "nightly", -- preferred tag
    config = function()
      require("nvim-tree").setup {
        disable_netrw = true,
        hijack_netrw = true,
        open_on_tab = false,
        update_cwd = true,
        diagnostics = {
          enable = true,
        },
        filters = {
          dotfiles = false,
          custom = {},
        },
        git = {
          enable = true,
          ignore = false,
          timeout = 500,
        },
        view = {
          width = 30,
          side = "left",
        },
      }
    end,
  },

  -- Adding ToggleTerm plugin for terminal at the bottom
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup {
        size = 20, -- The height of the terminal when it opens at the bottom
        open_mapping = [[<c-t>]], -- This is the keybinding to toggle the terminal
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = "1",
        start_in_insert = true,
        persist_size = true,
        direction = "horizontal", -- This makes the terminal open at the bottom
        close_on_exit = true, -- Close the terminal when the process exits
        shell = vim.o.shell, -- The shell to use
        float_opts = {
          border = "curved",
          width = 100,
          height = 30,
          winblend = 3,
        },
      }
    end,
  },
}
