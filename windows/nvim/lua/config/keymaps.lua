-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Ctrl + 矢印キーのサイズ変更方向を反転
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<cr>", {
  desc = "Decrease Window Height",
  silent = true,
  remap = false,
})

vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<cr>", {
  desc = "Increase Window Height",
  silent = true,
  remap = false,
})

vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +2<cr>", {
  desc = "Increase Window Width",
  silent = true,
  remap = false,
})

vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -2<cr>", {
  desc = "Decrease Window Width",
  silent = true,
  remap = false,
})

-- Space → i → f でコードを自動整形する
vim.keymap.set("n", "<leader>if", "<cmd>LazyFormat<CR>", {
  desc = "Format current file",
  silent = true,
  remap = false,
})

-- ターミナルモードでEscを押すとノーマルモードに戻る
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
  remap = false,
  silent = true,
  desc = "Exit terminal mode",
})

-- 選択した文字を削除しても、コピー内容を上書きしない

vim.keymap.set("x", "d", '"_d', {
  desc = "Delete without yanking",
  silent = true,
  remap = false,
})

vim.keymap.set("x", "<Del>", '"_d', {
  desc = "Delete without yanking",
  silent = true,
  remap = false,
})

vim.keymap.set("x", "x", '"_d', {
  desc = "Delete without yanking",
  silent = true,
  remap = false,
})
