return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    config.sources = {
      null_ls.builtins.formatting.prettier.with { filetypes = { "typescript", "json" } },
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.formatting.terraform_fmt,
      null_ls.builtins.formatting.prismaFmt,
    }

    return config
  end,
}
