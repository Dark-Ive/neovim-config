-- Initialize the plugins
return {
  -- Telescope Core Plugin
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required dependency
      "nvim-telescope/telescope-fzf-native.nvim", -- FZF sorter for Telescope
    },
    build = function()
      require("telescope").setup({
        defaults = {
          prompt_prefix = "🔍 ",
          selection_caret = "➜ ",
          path_display = { "truncate" },

          -- Sorting with FZF
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = { preview_width = 0.5 },
          },
        },
        pickers = {
          find_files = { theme = "dropdown" },
          live_grep = { theme = "ivy" },
        },
        extensions = {
          fzf = {
            fuzzy = true, -- Enable fuzzy searching
            override_generic_sorter = true, -- Override the default sorter
            override_file_sorter = true, -- Override the file sorter
            case_mode = "smart_case", -- Case-sensitive if uppercase used
          },
        },
      })

      -- Load the extensions
      require("telescope").load_extension("fzf")
    end,
  },

  -- Telescope FZF Native (compiles the C module for better performance)
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
}
