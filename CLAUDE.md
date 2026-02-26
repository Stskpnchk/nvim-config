# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal Neovim configuration using **lazy.nvim** as the plugin manager, written entirely in Lua.

## Architecture

**Bootstrap flow**: `init.lua` → auto-installs lazy.nvim if missing → loads `lua/vim-options.lua` (global settings) → calls `require("lazy").setup("plugins")` which auto-discovers all files in `lua/plugins/`.

**Key directories**:
- `lua/plugins/` — One file per plugin spec (lazy.nvim convention). Each file returns a lazy.nvim plugin spec table.
- `lua/vim-options.lua` — Global vim options, leader key (`<Space>`), and basic keymaps.
- `ftplugin/` — Filetype-specific configs (e.g., `java.lua` bootstraps jdtls via Mason).

## Plugin Organization Pattern

Each plugin gets its own file in `lua/plugins/`. Files return a table (or list of tables) following the lazy.nvim spec format:
```lua
return {
  "author/plugin-name",
  config = function() ... end,
}
```

## Key Subsystems

| Subsystem | Plugin(s) | Config file |
|-----------|-----------|-------------|
| LSP | mason.nvim + mason-lspconfig + nvim-lspconfig | `mason.lua` |
| Completion | nvim-cmp + LuaSnip + supermaven | `completions.lua` |
| Formatting/Linting | none-ls (null-ls) with stylua, prettierd, eslint_d, semgrep | `none-ls.lua` |
| Fuzzy finder | telescope.nvim | `telescope.lua` |
| File tree | neo-tree.nvim | `neotree.lua` |
| Testing | vim-test + vimux (runs tests in tmux panes) | `vim-test.lua` |
| Debugging | nvim-dap | `debugging.lua` |
| AI | ChatGPT.nvim + supermaven | `chatgpt.lua`, `supermaven.lua` |
| Theme | PaperColor (active) | `themes.lua` |

## Keybinding Namespaces

Leader is `<Space>`. Bindings are organized by prefix:
- `<leader>f*` — Telescope (ff=files, fw=grep, fb=buffers)
- `<leader>l*` — LSP (lh=hover, la=actions, lr=rename, lR=references)
- `<leader>t/T/a` — Testing (nearest/file/suite)
- `<leader>d*` — Debugging (db=breakpoint, dc=continue)
- `<leader>a*` — AI/ChatGPT
- `<leader>gf` — Format buffer
- `<leader>e` — Toggle neo-tree
- `<leader>/` — Toggle comment

## LSP Servers (via Mason)

lua_ls, rust_analyzer, ruff, ts_ls, pyright, emmet_language_server, jdtls, kotlin_language_server, eslint, ansible-language-server

## Conventions

- Indentation: 4 spaces (expandtab)
- Relative line numbers enabled
- Tmux integration via vim-tmux-navigator (`<C-h/j/k/l>` for pane switching)
- Java LSP handled separately in `ftplugin/java.lua` (not through mason-lspconfig's automatic setup)
