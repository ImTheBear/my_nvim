# Neovim Configuration - Agent Guidelines

## Build/Lint/Test Commands
- **Format Lua**: `stylua .` (formats all Lua files)
- **Check formatting**: `stylua --check .`
- **No test suite**: This is a personal Neovim config, no automated tests

## Language & Framework
- **Language**: Lua (Neovim configuration)
- **Plugin manager**: lazy.nvim

## Code Style
- **Formatting**: Use StyLua with settings from `.stylua.toml` (2-space indentation, single quotes preferred, no call parentheses)
- **Indentation**: 2 spaces (Lua files) or 4 spaces (vim settings in init.lua)
- **Imports**: Use `require()` for modules; no relative paths, use full module names
- **Plugin structure**: Each plugin file in `lua/plugins/` should return a table with plugin config
- **Comments**: Use `--` for single-line, avoid verbose comments; code should be self-explanatory
- **Naming**: snake_case for variables/functions, follow existing keymap patterns (`<leader>` + 2 chars)
- **Tables**: Follow StyLua formatting (keys without quotes when possible)
- **Error handling**: Use `pcall()` for optional plugin loading, check function existence before calling

## Conventions
- Keep `init.lua` as the main entry point; modular plugins go in `lua/plugins/`
- Use descriptive keymap descriptions for which-key integration
- LSP configs go in the main lspconfig setup in init.lua
- Always test keymaps don't conflict with existing bindings
