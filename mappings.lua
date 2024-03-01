return {
  n = {
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move line down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line up" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    ["<C-d>"] = { "<C-d>zz", desc = "Scroll and center screen" },
    ["<C-u>"] = { "<C-u>zz", desc = "Scroll and center screen" },
    ["<C-j>"] = { "i<CR><Esc>l", desc = "Break a line" },
    ["<F8>"] = { function() vim.diagnostic.goto_next() end, desc = "Go to next diagnostic" },
    ["<leader>ff"] = { function() require("telescope.builtin").find_files { hidden = true } end, desc = "Find files" },
  },
  v = {
    ["<A-j>"] = { ">+1<CR>gv=gv", desc = "Move line down" },
    ["<A-k>"] = { "<-2<CR>gv=gv", desc = "Move line up" },
    ["p"] = { '"_dP', desc = "Paste without copying" },
  },
  x = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line down" },
    ["<A-j>"] = { ">+1<CR>gv=gv", desc = "Move line down" },
    ["<A-k>"] = { "<-2<CR>gv=gv", desc = "Move line up" },
  },
  t = {},
  i = {
    ["<C-u>"] = {
      'copilot#Accept("<CR>")',
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
    },
    ["<C-a>"] = { "<Plug>(copilot-accept-word)" },
    ["<C-l>"] = {
      "copilot#Next()",
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
    },
    ["<C-h>"] = {
      "copilot#Previous()",
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
    },
  },
}
