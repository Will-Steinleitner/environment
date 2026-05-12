return {
  "numToStr/Comment.nvim",

  config = function()
    local comment = require("Comment")
    local api = require("Comment.api")
    local map = vim.keymap.set -- alias for vim.keymap.set

    comment.setup()

    -- Mappings
    vim.keymap.set("n", "?", function() -- normal mode
      api.toggle.linewise.current()
    end, {
      silent = true,
      noremap = true,
      desc = "Toggle comment line",
    })
    vim.keymap.set("x", "?", function() -- visual mode
      api.toggle.linewise(vim.fn.visualmode())
    end, {
      silent = true,
      noremap = true,
      desc = "Toggle comment selection",
    })
  end,
}
