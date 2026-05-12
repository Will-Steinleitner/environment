return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local map = vim.keymap.set -- alias for vim.keymap.set

    telescope.setup({
      defaults = {
        path_display = { "truncate" },
        file_ignore_patterns = {
          "^.git/",
          "^node_modules/",
          "^build/",
          "^dist/",
          "package%-lock.json",
          "^.next/",
        },
        mappings = {
          i = {
            ["<S-k>"] = actions.move_selection_previous, -- move to prev result
            ["<S-j>"] = actions.move_selection_next, -- move to next result
            ["<S-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })
    telescope.load_extension("fzf")
  end,
}
