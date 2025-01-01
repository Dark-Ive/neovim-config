return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = "soft"
    vim.g.gruvbox_material_transparent_background = 2

    local highlights = {
      "Normal",
      "NormalFloat",
      "FloatBorder",
      "Pmenu",
      "PmenuSel",
      "StatusLine",
      "StatusLineNC",
      "WinBar",
      "WinBarNC",
      "LazyNormal",
    }

    for _, group in ipairs(highlights) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end

    vim.cmd("colorscheme gruvbox-material")
  end,
}
