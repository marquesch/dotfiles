-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    {
      "ibhagwan/fzf-lua",
      -- optional for icon support
      dependencies = { "nvim-tree/nvim-web-devicons" },
      -- or if using mini.icons/mini.nvim
      -- dependencies = { "echasnovski/mini.icons" },
      opts = {}
    },
    {
      'shaunsingh/nord.nvim',
    },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

require "fzf-lua".setup { defaults = { git_icons = false } }

vim.api.nvim_set_keymap("n", "<C-\\>", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-k>", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-p>", [[<Cmd>lua require"fzf-lua".files()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], {})
vim.api.nvim_set_keymap("n", "<F1>", [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], {})

vim.cmd("colorscheme nord")

vim.opt.showmatch = true            -- show matching brackets
vim.opt.ignorecase = true           -- case-insensitive searching
vim.opt.mouse = "a"                 -- enable mouse in all modes
vim.opt.hlsearch = true             -- highlight search matches
vim.opt.incsearch = true           -- incremental search

vim.opt.tabstop = 4                -- number of visual spaces per TAB
vim.opt.softtabstop = 4           -- see multiple spaces as tabstops
vim.opt.expandtab = true          -- convert tabs to spaces
vim.opt.shiftwidth = 4            -- number of spaces for each indentation
vim.opt.autoindent = true         -- copy indent from current line

vim.opt.relativenumber = true     -- relative line numbers
vim.opt.number = true             -- absolute line number on the cursor line

vim.opt.wildmode = { "longest", "list" }  -- command-line completion

vim.cmd("filetype plugin indent on") -- enable filetype plugins & indenting
vim.cmd("syntax on")                 -- enable syntax highlighting

vim.opt.clipboard = "unnamedplus"   -- use system clipboard
vim.opt.cursorline = true           -- highlight the current line
vim.opt.ttyfast = true              -- faster redrawing
vim.opt.wrap = false                -- disable line wrap
