return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
  },

  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local map = vim.keymap.set

    vim.lsp.config("gopls", {
      capabilities = capabilities,

      on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.code_action({
              context = { only = { "source.organizeImports" } },
              apply = true,
            })
          end,
        })
      end,
    })

    vim.lsp.config("html", {
      capabilities = capabilities,
    })

    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    vim.lsp.enable("gopls")
    vim.lsp.enable("html")
    vim.lsp.enable("lua_ls")

    -- keymaps
    map("n", "gd", vim.lsp.buf.definition, {
      desc = "Go to definition",
    })

    map("n", "K", vim.lsp.buf.hover, {
      desc = "Hover documentation",
    })
  end,
}
