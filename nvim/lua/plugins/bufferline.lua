return {
  "akinsho/bufferline.nvim",

  version = "*",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = true,
      },
    })
  end,
}
