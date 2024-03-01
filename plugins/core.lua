return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem = require("astronvim.utils").extend_tbl(opts.filesystem, {
        filtered_items = {
          visible = true,
        },
      })

      opts.window = require("astronvim.utils").extend_tbl(opts.window, {
        width = 35,
      })

      opts.default_component_configs = require("astronvim.utils").extend_tbl(opts.default_component_configs, {
        indent = require("astronvim.utils").extend_tbl(opts.default_component_configs.indent, {
          indent_size = 1,
        }),
      })
    end,
  },
}
