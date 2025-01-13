return {
  "mhartington/formatter.nvim",
  config = function()
    require("formatter").setup({
      filetype = {
        html = {
          require("formatter.filetypes.html").prettier,
        },
        javascript = {
          require("formatter.filetypes.javascript").prettier,
        },
        css = {
          require("formatter.filetypes.css").prettier,
        },
        json = {
          require("formatter.filetypes.json").prettier,
        },
        markdown = {
          require("formatter.filetypes.markdown").prettier,
        },
      },
    })
  end,
}
