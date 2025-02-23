-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {"puppet", "ruby_lsp", "yamlls"}
local nvlsp = require "nvchad.configs.lspconfig"



-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- lspconfig.puppet.setup{
--  cmd = { "/Users/milansterkens/.local/share/nvim/mason/packages/puppet-editor-services/puppet-languageserver", " --stdio" },
-- }

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
