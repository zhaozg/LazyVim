return {
  recommended = {
    ft = { "elm" },
    root = { "elm.json" },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "elm" } },
  },

  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "elm-format" } },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elmls = {},
      },
    },
  },
}
