-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.lazyvim_conceallevel = 1

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
})

vim.keymap.set("n", "<leader>m", ":Mason<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>r", ":IncRename")

vim.cmd([[
    highlight Comment gui = italic
    highlight Error gui = italic
]])

vim.api.nvim_set_hl(0, "Cmdline", { bg = "NONE" })
vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })

vim.opt.cmdheight = 1
vim.opt.laststatus = 2
