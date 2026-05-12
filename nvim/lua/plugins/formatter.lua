return {
  "stevearc/conform.nvim",

  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },

        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },

        json = { "prettier" },
        vue = { "prettier" },
        html = { "prettier" },
        yaml = { "prettier" },
        go = { "gofmt" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      },
    })
  end,
}
