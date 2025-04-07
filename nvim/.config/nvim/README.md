# Neovim Configuration

## Directory Structure 
.
├── init.lua
├── lua
│   ├── config
│   │   ├── lazy.lua -- The lazy plugin Manager configuration
│   │   └── vim.lua -- High level config for nvim
│   ├── plugins -- Plugins. One file per plugin (Warning. some plugins are installed by dependeciens
│   │   ├── conform.lua
│   │   ├── dressing.lua
│   │   ├── fzf-lua.lua
│   │   ├── kanagawa.lua
│   │   ├── lsp.lua
│   │   ├── lualine.lua
│   │   ├── neo-tree.lua
│   │   ├── oil.lua
│   │   ├── project.lua
│   │   ├── python-nvim.lua
│   │   ├── python-lua-snippets.lua
│   │   └── treesitter.lua
│   └── stash -- Unused plugings that might want to use in the future
│       ├── catppuchin.lua
│       └── telescope.lua
└── tmp -- Playground
    └── init.lua 

## Proggraming setup

treesitter = indentation and code highlighting
conform = code formatting
lsp = Language server
python-vim = .env management
python-lua-snippets = python snippets
blink-cmp = code completion

## To add a language support

1. Check the package name usig :Mason (iside Mason use `<C-f>` for filtering language. Notice that there are (LSPs, Linters, Formated, etc) 
2. Ensure the packages are installed by Mason (packet manager). in the `lsp.lua` look  for ensure_installed 
3. in `lsp.lua` add the language at the `local servers ={`
4. go to `conform.lua` and add the formatter. check Mason for one. Make sure you add the formater to the `ensure_installed`
5. Add sources to blink.cmp at `blink-cmp` if needed (sources here: https://cmp.saghen.dev/configuration/sources#community-sources)



