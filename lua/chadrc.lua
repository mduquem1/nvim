-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.lsp = {
  setup_lspconfig = "custom.lsp_configs",
  servers = {
    "tsserver",
    "volar",
    "vue",
    "html",
    "javascript",
    "typescript",
    "cssls",
    "typescriptreact",
    "javascriptreact",
  },
}

return M
