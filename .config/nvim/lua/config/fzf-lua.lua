local fzf_lua = require("fzf-lua")

fzf_lua.setup {
  defaults = {
    git_icons = false,
  }
}

vim.keymap.set('n', '<leader>ss', fzf_lua.lsp_live_workspace_symbols, opts)
