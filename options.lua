return {
  opt = {
    relativenumber = true,
    number = true,
    spell = true,
    spelllang = { "en_us", "ru" },
    spelloptions = "camel",
    -- don't check for capital letters at start of sentence
    spellcapcheck = "",
    signcolumn = "yes",
    wrap = false,
    so = 5,
    incsearch = true,
    hlsearch = true,
    wrapscan = true,
    colorcolumn = "81",
    belloff = "all",
  },
  g = {
    mapleader = " ",
    autoformat_enabled = true,
    cmp_enabled = true,
    autopairs_enabled = true,
    -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    diagnostics_mode = 3,
    icons_enabled = true,
    ui_notifications_enabled = true,
    -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
    resession_enabled = false,
  },
}
