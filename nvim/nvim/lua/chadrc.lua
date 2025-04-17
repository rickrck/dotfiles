-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.ui = {
  statusline = {
    theme = "vscode_colored",
    separator_style = "default",

    -- separator_style = "block",
  },
  telescope = { style = "borderless" },
  tabufline = {
    enabled = false,
  },
  cmp = {
    lspkind_text = true,
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "                                  ",
    "░▒▓███████▓▒░░▒▓█▓▒░▒▓████████▓▒░ ",
    "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░        ",
    "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░        ",
    "░▒▓███████▓▒░░▒▓█▓▒░▒▓██████▓▒░   ",
    "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░        ",
    "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░        ",
    "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓███████▓▒░  ",
    "                                  ",
  },
  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
    { txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
    { txt = "󰵤 Typing Test", keys = ":Typr", cmd = "Typr"},
    -- { txt = "Outline", keys = "Spc l o"},
  },
}

M.base46 = {
  theme = "ayu_dark",
  -- transparency = true,

  hl_override = {
  	Comment = { italic = true },
  	["@comment"] = { italic = true },
  },
}

 M.colorify = {
   enabled = true,
   mode = "virtual", -- fg, bg, virtual
   virt_text = "󱓻 ",
   highlight = { hex = true, lspvars = true },
 }

return M
