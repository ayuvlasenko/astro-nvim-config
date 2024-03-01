return {
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  colorscheme = "catppuccin",

  diagnostics = {
    virtual_text = false,
    underline = true,
  },

  lsp = {
    formatting = {
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        "tsserver",
      },
      timeout_ms = 5000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
    config = {
      tsserver = function()
        return {
          commands = {
            OrganizeImports = {
              function()
                local params = {
                  command = "_typescript.organizeImports",
                  arguments = { vim.api.nvim_buf_get_name(0) },
                  title = "",
                }
                vim.lsp.buf.execute_command(params)
              end,
              description = "Organize Imports",
            },
          },
        }
      end,
    },
  },

  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
      command = "setlocal tabstop=4 shiftwidth=4",
    })
    -- Set up custom filetypes
    vim.filetype.add {
      -- extension = {
      --   foo = "fooscript",
      -- },
      -- filename = {
      --   ["Foofile"] = "fooscript",
      -- },
      -- pattern = {
      --   ["~/%.config/foo/.*"] = "fooscript",
      -- },
      filename = {
        [".env"] = "sh",
      },
      pattern = {
        ["%.env%.[%w_.-]+"] = "sh",
      },
    }
  end,
}
