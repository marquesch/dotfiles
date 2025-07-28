local M = {}

M.setup = function()
  vim.api.nvim_set_keymap("n", "<C-\\>", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], { desc = "Fzf-lua: Buffers" })
  vim.api.nvim_set_keymap("n", "<C-k>", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], { desc = "Fzf-lua: Builtin" })
  vim.api.nvim_set_keymap("n", "<C-p>", [[<Cmd>lua require"fzf-lua".files()<CR>]], { desc = "Fzf-lua: Files" })
  vim.api.nvim_set_keymap("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep()<CR>]], { desc = "Fzf-lua: Live Grep" })
  vim.api.nvim_set_keymap("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], { desc = "Fzf-lua: Grep Project" })
  vim.api.nvim_set_keymap("n", "<F1>", [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], { desc = "Fzf-lua: Help Tags" })
end

M.setup()
