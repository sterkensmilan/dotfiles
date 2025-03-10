-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadracula",
  theme_toggle = { "chadracula", "doomchad" },
  transparency = true,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
  statusline = {
      theme = "default", -- default/vscode/vscode_colored/minimal
  },
}

M.nvdash = {
    load_on_startup = true,
  }


return M
