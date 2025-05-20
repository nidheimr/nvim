local opts = { noremap = true, silent = true }

-- swap buffers
vim.keymap.set("n", "<S-Left>", "<C-w><Left>", opts)
vim.keymap.set("n", "<S-Right>", "<C-w><Right>", opts)
vim.keymap.set("n", "<S-Up>", "<C-w><Up>", opts)
vim.keymap.set("n", "<S-Down>", "<C-w><Down>", opts)

-- nvim tree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- move
vim.keymap.set("n", "<A-Down>", ":MoveLine(1)<CR>", opts)
vim.keymap.set("n", "<A-Up>", ":MoveLine(-1)<CR>", opts)
vim.keymap.set("v", "<A-Down>", ":MoveBlock(1)<CR>", opts)
vim.keymap.set("v", "<A-Up>", ":MoveBlock(-1)<CR>", opts)

-- programming
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, opts)

-- telescope
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>e", ":Telescope diagnostics<CR>", opts)
