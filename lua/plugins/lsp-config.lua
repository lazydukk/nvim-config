return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "cssls",
          "eslint",
          "golangci_lint_ls",
          "gopls",
          "html",
          "jsonls",
          "tsserver",
          "marksman",
          "pyre",
          "pyright",
          "pylsp",
          "sqlls",
          "tailwindcss",
          "biome",
          "vtsls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup{}
      lspconfig.pyright.setup {}
      lspconfig.tsserver.setup {}
    end
  }
}
