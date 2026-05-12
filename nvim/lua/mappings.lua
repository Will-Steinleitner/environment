local map = vim.keymap.set

-- Nvim-tree
map("n", "tt", "<cmd>NvimTreeToggle<CR>", {
  silent = true,
  noremap = true,
  desc = "Toggle file explorer",
})
map("n", "t<space>", "<cmd>NvimTreeCollapse<CR>", {
  silent = true,
  noremap = true,
  desc = "Collapse file explorer",
})
map("n", "tr", "<cmd>NvimTreeRefresh<CR>", {
  silent = true,
  noremap = true,
  desc = "Refresh file explorer",
})
map("n", "<Tab>", "<C-w>w", {
  silent = true,
  noremap = true,
  desc = "Switch windows",
})

-- Bufferline (move block)
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", {
  silent = true,
  noremap = true,
  desc = "Previous buffer",
})
map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", {
  silent = true,
  noremap = true,
  desc = "Next buffer",
})

-- Comment mappings in comment.lua

-- Telescope
map("n", "ff", "<cmd>Telescope live_grep<CR>", {
  silent = true,
  noremap = true,
  desc = "Search in project",
})
