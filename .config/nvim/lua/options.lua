vim.opt.showmatch = true         -- show matching brackets
vim.opt.ignorecase = true        -- case-insensitive searching
vim.opt.mouse = "a"              -- enable mouse in all modes
vim.opt.hlsearch = true          -- highlight search matches
vim.opt.incsearch = true         -- incremental search

vim.opt.tabstop = 4              -- number of visual spaces per TAB
vim.opt.softtabstop = 4          -- see multiple spaces as tabstops
vim.opt.expandtab = true         -- convert tabs to spaces
vim.opt.shiftwidth = 4           -- number of spaces for each indentation
vim.opt.autoindent = true        -- copy indent from current line

vim.opt.relativenumber = true    -- relative line numbers
vim.opt.number = true            -- absolute line number on the cursor line

vim.opt.wildmode = { "longest", "list" } -- command-line completion

vim.cmd("filetype plugin indent on") -- enable filetype plugins & indenting
vim.cmd("syntax on")                 -- enable syntax highlighting

vim.opt.clipboard = "unnamedplus"   -- use system clipboard
vim.opt.cursorline = true           -- highlight the current line
vim.opt.ttyfast = true              -- faster redrawing
vim.opt.wrap = false                -- disable line wrap

vim.opt.termguicolors = true
