local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    py = { "ruff" },
    python = { "ruff" },
    css = { "prettier" },
    html = { "prettier" },
    php = { "pretty-php" },
    dart = { "dcm" },
    java = { "google-java-format" },
    cpp = { "clang-format" },
    c = { "clang-format" },
    go = { "gopls" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
