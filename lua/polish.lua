vim.opt.scrolloff = 10
vim.api.nvim_set_keymap('n', '<leader>lR', '<cmd>Telescope.lsp_references()<CR>', { noremap = true, silent = true })
