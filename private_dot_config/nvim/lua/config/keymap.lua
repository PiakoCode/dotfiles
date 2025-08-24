-- keymap.lua
local map = vim.api.nvim_set_keymap
local opt = { noremap = true }

-- Linux/Win 下
-- C 为 ctrl
-- S 为 shift
-- M 为 alt
-- Mac 下
-- M 为 command

--
map("i", "jk", "<Esc>", opt)
map("i", "kl", "<Right>", opt)
-- 窗口管理
map("n", "<Leader>v", ":vsplit<CR>", opt)
map("n", "<Leader>h", ":split<CR>", opt)

-- 窗口导航
map("n", "<Leader>w", "<C-w>", opt)


map("n", "<Leader>x", ":xa<CR>", opt)
map("v", "<Leader>x", ":xa<CR>", opt)

-- map("t", "<Leader>x", ":xa<CR>", opt)

map("n", "<Leader>q", ":x<CR>", opt)
map("v", "<Leader>q", ":x<CR>", opt)
-- map("t", "<Leader>q", ":x<CR>", opt)



