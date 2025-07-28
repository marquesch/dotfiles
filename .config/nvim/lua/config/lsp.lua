local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Function to setup common LSP keymaps and omnifunc on buffer attach
local on_attach = function(client, bufnr)
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

  local opts = { buffer = bufnr }

  -- Keymaps for LSP functions
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)          -- Go to Definition
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)         -- Go to Declaration
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)          -- Go to References
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)      -- Go to Implementation
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)     -- Go to Type Definition
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)                -- Show documentation on hover
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)      -- Rename symbol
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- Code Actions

  -- Optional: Diagnostics keymaps
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

  -- Format on save
  if client.server_capabilities.documentFormatting then
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = vim.api.nvim_create_augroup('LspFormatting' .. bufnr, { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end


-- gopls setup
lspconfig.gopls.setup({
  capabilities = capabilities, -- Pass capabilities from nvim-cmp
  on_attach = on_attach,       -- Apply common keymaps and settings
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true, -- Enable snippet-like placeholders
      analyses = {
          unusedparams = true,
          nilness = true,
          shadow = true,
      },
      staticcheck = true,
      gofumpt = true, -- Use gofumpt if installed for more opinionated formatting
    },
  },
  init_options = {
    -- Additional gopls init options if needed
  },
})

-- You can add setups for other language servers here, e.g.:
-- lspconfig.lua_ls.setup({
--   capabilities = capabilities,
--   on_attach = on_attach,
--   settings = {
--     Lua = {
--       runtime = { version = 'LuaJIT' },
--       diagnostics = { globals = { 'vim' } },
--       workspace = { library = vim.api.nvim_get_runtime_file("", true) },
--       telemetry = { enable = false },
--     },
--   },
-- })
