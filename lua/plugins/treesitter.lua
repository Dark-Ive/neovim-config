return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    ensure_installed = {
      "json",
      "javascript",
      "html",
      "css",
      "bash",
      "lua",
      "markdown",
      "markdown_inline",
      "c",
      "cpp",
      "graphql",
      "rust",
      "sql",
      "query",
      "svelte",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
  config = function(_, opts)
    local ok, treesitter = pcall(require, "nvim-treesitter.configs")
    if not ok then
      return
    end
    treesitter.setup(opts)
  end,
}
