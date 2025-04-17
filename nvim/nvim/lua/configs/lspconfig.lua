-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "ts_ls", "jdtls", "dartls", "pylsp" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

require("flutter-tools").setup {
  lsp = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  },
}

-- Dart LSP setup (dartls)
lspconfig.dartls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

lspconfig.intelephense.setup {
  cmd = { vim.fn.expand('~') .. "/.local/share/nvim/mason/bin/intelephense", "--stdio" },
  on_attach = function(client, bufnr)
    -- Key mappings and other LSP setup
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  end,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  
  -- Tentukan root directory secara eksplisit
  root_dir = function(fname)
    return lspconfig.util.root_pattern("composer.json", ".git")(fname) or vim.loop.os_homedir()
  end,
}

