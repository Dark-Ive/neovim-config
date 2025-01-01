return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.routes = opts.routes or {}
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets = opts.presets or {}
      opts.presets.lsp_doc_border = true
      require("noice").setup({
        cmdline = {
          enabled = true,
          view = "cmdline",
          hide = false,
        },
        lsp = {
          progress = {
            enabled = true,
          },
        },
        presets = {
          bottom_search = false,
        },
        views = {
          cmdline = {
            position = {
              row = "98%",
              col = "50%",
            },
            size = {
              width = 160,
              height = "auto",
            },
            win_options = {
              winhighlight = "Normal:Normal, FloatBorder:FloatBorder",
            },
          },
        },
        status = {
          enabled = true,
        },
      })
    end,
  },

  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
    ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config = opts.config or {}
      opts.config.header = vim.split(logo, "\n")
      opts.config.footer = "Yeah! I use Neovim by the way"
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 4000,
    },
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup()
    end,
  },

  {
    "b0o/incline.nvim",
    dependencies = { "craftzdog/solarized-osaka.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("solarized-osaka.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = colors.yellow, guifg = colors.base04 },
            InclineNormalNC = { guifg = colors.violet100, guibg = colors.base03 },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
}
