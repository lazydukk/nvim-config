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
          "tsserver",
          "cssmodules_ls",
          "cssls",
          "golangci_lint_ls",
          "gopls",
          "html",
          "jsonls",
          "biome",
          "marksman",
          "prismals",
          "pyre",
          "pyright",
          "tailwindcss",
          "taplo",
          "hydra_lsp",
          "vtsls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.cssmodules_ls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.biome.setup({})
      lspconfig.marksman.setup({})
      lspconfig.prismals.setup({})
      lspconfig.pyre.setup({})
      lspconfig.pyright.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.taplo.setup({})
      lspconfig.hydra_lsp.setup({})
      lspconfig.vtsls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
