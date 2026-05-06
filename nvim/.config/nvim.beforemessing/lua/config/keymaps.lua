-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local harpoon = require("harpoon")
--
-- REQUIRED
harpoon:setup()
-- REQUIRED
--
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "[A]dd to harpoon" })
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Toggle Harpoon List" })
--
vim.keymap.set("n", "<C-a>", function()
  harpoon:list():select(1)
end, { desc = "Select 1st Harpoon File" })
vim.keymap.set("n", "<C-b>", function()
  harpoon:list():select(2)
end, { desc = "Select 2nd Harpoon File" })
vim.keymap.set("n", "<C-c>", function()
  harpoon:list():select(3)
end, { desc = "Select 3rd Harpoon File" })
vim.keymap.set("n", "<C-d>", function()
  harpoon:list():select(4)
end, { desc = "Select 4th Harpoon File" })

vim.keymap.set("n", "<C-u>", vim.cmd.UndotreeToggle, { desc = "Toggle [U]ndo tree" })
