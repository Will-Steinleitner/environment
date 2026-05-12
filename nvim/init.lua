vim.g.mapleader = " "

require("lazy-config")
require("mappings")
require("options")

-- Go imports on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.code_action({
      context = { only = { "source.organizeImports" } },
      apply = true,
    })
  end,
})
