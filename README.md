# Neovim Configuration

![Static Badge](https://img.shields.io/badge/Linux-yellow) ![Static Badge](https://img.shields.io/badge/Windows-blue) ![Static Badge](https://img.shields.io/badge/lazyvim-lightred) ![Static Badge](https://img.shields.io/badge/neovim-0.9%2B-lightblue)

A modern, modular, and lightweight Neovim configuration made for wsl2 in windows. This is a beginner setup made for my workflow.

## Overview

This repository contains a personalized Neovim configuration optimized for coding, ease of use. It uses lazyvim [lazy.nvim](https://github.com/folke/lazy.nvim), supports Language Server Protocol (LSP), and provides a clean interface.
To use this config in linux environment, remove these lines from `init.lua` to remove the integration with win32yank,
  ```lua
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
```
To change the colorscheme, edit the `colorscheme.lua` and also change these lines in `lazy.lua` or you can remove them,
  ```lua
      opts = {
        colorscheme = "gruvbox-material",
      }
  ```

## Features

- **Plugin Management**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim).
- **LSP Integration**: Code navigation and completion using [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
- **Syntax Highlighting**: nvim-treesitter [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- **Fuzzy Finding**: File and content search using [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- **Customizable Themes**: Gruvbox-material [gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- **Statusline**: Minimal statusline with [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim).
- **Keybindings**: keymaps are configured mostly for myself, you can change it in `keymaps.lua`.

## Start screen with Dashboard-nvim
![image](https://github.com/user-attachments/assets/211af87f-7d6d-4cd1-8760-22af0f65c33f)

## Fuzzy finding using fzf
![neovim-ezgif com-optimize](https://github.com/user-attachments/assets/6c4d52f7-ed06-4f7a-a16b-76e551612674)


## Prerequisites

| Dependency | Version | Purpose |
|------------|---------|---------|
| [Neovim](https://neovim.io/) | 0.9.0+ | Core editor |
| [Git](https://git-scm.com/) | Latest | Repository cloning |
| [Nerd Font](https://www.nerdfonts.com/font-downloads) | Any | Icons and glyphs |
| [Node.js](https://nodejs.org/) | Any | LSP and plugin support |
| [FZF](https://github.com/junegunn/fzf) | Any | Finding files in telescope.nvim |
| [win32yank](https://github.com/equalsraf/win32yank) | | Clipboard intergration for WSL | 

## Installation

1. **Clone the Repository**  
   Clone this configuration to your Neovim config directory:
   ```bash
   git clone https://github.com/Dark-Ive/neovim-config.git ~/.config/nvim
   ```

**Note**: Neovim may be slower in WSL compared to a native linux environment.
