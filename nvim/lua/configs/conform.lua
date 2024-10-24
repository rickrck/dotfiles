local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    py = { "black" },
    python = { "black" },
    css = { "prettier" },
    html = { "prettier" },
    php = { "prettier" },
    dart = { "dcm" },
    java = { "google-java-format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
