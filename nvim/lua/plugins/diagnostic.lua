return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  config = function()
    require("tiny-inline-diagnostic").setup({
      preset = "powerline",

      options = {
        show_source = true,
        multilines = true,

        softwrap = 30,

        break_line = {
          enabled = true,
        },

        add_messages = true,
      },
    })

    vim.diagnostic.config({
      virtual_text = false,
      underline = true,
      update_in_insert = false,
      severity_sort = true,

      float = {
        border = "rounded",
        source = "if_many",
      },
    })
  end,
}
