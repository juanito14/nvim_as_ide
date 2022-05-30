-- Just an example, supposed to be placed in /lua/custom/
local userPlugins = require "custom.plugins"
local userHighlights = require "custom.highlights"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.options = {
   -- custom = {}
   -- general nvim/vim options , check :h optionname to know more about an option
   ruler = true,
   mapleader = ";",
   relativenumber = true,
   cursorline = true,
   tabstop = 4,
   softtabstop = 4,
   shiftwidth = 4,
}

M.ui = {
    theme = "blossom",
   hl_override = userHighlights, -- path of your file that contains highlights
   colors = "", -- path of your file that contains colors
}

M.plugins = {user = userPlugins}


return M
