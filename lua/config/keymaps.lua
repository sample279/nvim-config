-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>ds", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

vim.keymap.del({ "n", "i", "v" }, "<C-s>") -- remove lazyvim default bind
keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with ctrl + s" }) -- use ctrl + s to exit insert mode

keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlights" }) -- clear search highlights

keymap.set("n", "x", '"_x', opts) -- delete single character without copying into register

-- line management
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" }) -- moves lines down
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" }) -- moves lines up
keymap.set("n", "J", "mzJ`z", { desc = "joins lines but keeps cursor position" }) -- joins with the line below
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" }) -- moves down half the page
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" }) -- moves up half the page
keymap.set("n", "n", "nzzzv", { desc = "Go to next hl" }) -- cursors jumps to next hl
keymap.set("n", "N", "Nzzzv", { desc = "Go to prev hl" }) -- cursors jumps to prev hl

-- line indent
keymap.set("v", "<", "<gv", opts) -- Indent right and keep selection active
keymap.set("v", ">", ">gv", opts) -- Indent left and keep selection active

-- increment/decrement numbers
keymap.set("n", "<C-a>", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<C-x>", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Replace the word cursor is on globally
keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word cursor is on globally" }
)

-- Hightlight yanking
-- vim.api.nvim_create_autocmd("TextYankPost", {
--   desc = "Highlight when yanking (copying) text",
--   group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
--   callback = function()
--     vim.hl.on_yank()
--   end,
-- })

-- Copy filepath to the clipboard
keymap.set("n", "<leader>fp", function()
  local filePath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
  vim.fn.setreg("+", filePath) -- Copy the file path to the clipboard register
  print("File path copied to clipboard: " .. filePath)
end, { desc = "Copy file path to clipboard" })
