return {
  recommended = function()
    return LazyVim.extras.wants({
      ft = { "haskell", "lhaskell" },
      root = { "hie.yaml", "stack.yaml", "cabal.project", "*.cabal", "package.yaml" },
    })
  end,

  -- Add Haskell to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "haskell" } },
  },

  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "haskell-language-server" } },
  },

  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = { ensure_installed = { "haskell-debug-adapter" } },
      },
    },
  },

  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      { "mrcjkb/neotest-haskell" },
    },
    opts = {
      adapters = {
        ["neotest-haskell"] = {},
      },
    },
  },

  -- as it conflicts with haskell-tools
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        hls = function()
          return true
        end,
      },
    },
  },
}
