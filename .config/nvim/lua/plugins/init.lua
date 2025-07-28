return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    'shaunsingh/nord.nvim',
  },
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
  {"fatih/vim-go", ft = 'go'},
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',       -- LSP source for nvim-cmp
  'hrsh7th/cmp-buffer',         -- Buffer words source
  'hrsh7th/cmp-path',           -- File path source
  'saadparwaiz1/cmp_luasnip',   -- Snippet integration for nvim-cmp
  'L3MON4D3/LuaSnip',           -- Snippet engine
  'rafamadriz/friendly-snippets', -- A collection of common snippets

  'neovim/nvim-lspconfig',
}
