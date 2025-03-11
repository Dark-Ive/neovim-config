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
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#fabd2f", bg = "NONE" })

vim.opt.cmdheight = 1
vim.opt.laststatus = 3

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*",
  callback = function()
    vim.cmd("FormatWrite")
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  command = "set guicursor=a:ver25",
})

vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}

vim.lsp.handlers["textDocument/signatureHelp"] = function() end

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  trigger_characters = {},
})
