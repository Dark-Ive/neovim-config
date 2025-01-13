return {
  -- mason.nvim configuration
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      -- Import mason and related modules
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")

      -- Enable mason and configure icons
      mason.setup({
        ui = {
          border = "rounded",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      -- Configure mason-lspconfig for automatic server installation
      mason_lspconfig.setup({
        automatic_installation = false, -- You can set to true for automatic installation
        ensure_installed = {
          "html",
          "cssls",
          "tailwindcss",
          "svelte",
          "lua_ls",
          "graphql",
          "emmet_ls",
          "prismals",
          "jsonls",
          "pylsp",
          "jdtls",
        },
      })

      -- Configure mason-tool-installer for additional tools
      mason_tool_installer.setup({
        ensure_installed = {
          "stylua", -- lua formatter
          "isort", -- python formatter
          "black", -- python formatter
          "pylint",
          "eslint_d",
        },
      })
    end,
  },
}
