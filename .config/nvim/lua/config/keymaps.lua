-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>k", ":Man<CR>")
vim.keymap.set("n", "<leader>cs", ":lua vim.lsp.buf.format({timeout_ms = 3000})<CR>")
vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>")
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>")
vim.keymap.set("n", "<leader>dt", ":DiffviewToggleFiles<CR>")
