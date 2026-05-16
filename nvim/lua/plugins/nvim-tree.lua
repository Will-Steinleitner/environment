return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local nvimtree = require("nvim-tree")

    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

    -- custom mappings for nvim-tree buffer
    local function on_attach(bufnr)
      local api = require("nvim-tree.api")

      api.config.mappings.default_on_attach(bufnr)

      -- open files/folders with space
      vim.keymap.set("n", "<Space>", api.node.open.edit, {
        buffer = bufnr,
        noremap = true,
        silent = true,
        nowait = true,
        desc = "Open node",
      })
    end

    -- configure nvim-tree
    nvimtree.setup({
      on_attach = on_attach,

      view = {
        width = 35,
        relativenumber = false,
        number = false,
      },

      renderer = {
        indent_markers = {
          enable = true,
        },
      },

      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },

      filters = {
        custom = { ".DS_Store" },
      },

      git = {
        ignore = true,
      },
    })
  end,
}
