local s_debug        = { gui= "#B027AF", cterm= "123" }
local s_black        = { gui= "#383a42", cterm= "237" }
local s_gray         = { gui= "#E6E6E6", cterm= "237" }
local s_red          = { gui= "#e45649", cterm= "167" }
local s_green        = { gui= "#50a14f", cterm= "71" }
local s_light_yellow = { gui= "#fffbe6", cterm= "136" }
local s_yellow       = { gui= "#c18401", cterm= "136" }
local s_blue         = { gui= "#001cac", cterm= "18" }
local s_lightblue    = { gui= "#2469d2", cterm= "26" }
local s_purple       = { gui= "#a626a4", cterm= "127" }
local s_cyan         = { gui= "#007074", cterm= "6" }
local s_white        = { gui= "#fafafa", cterm= "231" }
local s_brown        = { gui= "#855800", cterm= "136" }
local s_dark         = { gui= "#000000", cterm= "0" }

local s_fg           = s_black
local s_bg           = s_white

local s_comment_fg   = { gui= "#a0a1a7", cterm= "247" }
local s_gutter_bg    = { gui= "#fafafa", cterm= "231" }
local s_gutter_fg    = { gui= "#d4d4d4", cterm= "252" }

local s_cursor_line  = { gui= "#f2f2f2", cterm= "255" }
local s_color_col    = { gui= "#f2f2f2", cterm= "255" }

local s_selection    = { gui= "#bfceff", cterm= "153" }
local s_vertsplit    = { gui= "#f0f0f0", cterm= "255" }


function s_h(group, fg, bg, attr)
    if fg ~= "" then
        vim.cmd("hi " .. group .. " guifg=" .. fg.gui .. " ctermfg=" .. fg.cterm)
    else
        vim.cmd("hi " .. group .. " guifg=NONE cterm=NONE")
    end

    if bg ~= "" then
        vim.cmd("hi " .. group .. " guibg=" .. bg.gui .. " ctermbg=" .. bg.cterm)
    else
        vim.cmd("hi " .. group .. " guibg=NONE ctermbg=NONE")
    end

    if attr ~= "" then
        vim.cmd("hi " .. group .. " gui=" .. attr .. " cterm=" .. attr)
    else
        vim.cmd("hi " .. group .. " gui=NONE cterm=NONE")
    end
end


s_h("Normal", s_fg, s_bg, "")
s_h("NonText", s_gray, "", "")

s_h("Cursor", s_bg, s_blue, "")
s_h("CursorColumn", "", s_cursor_line, "")
s_h("CursorLine", "", s_light_yellow, "")

s_h("LineNr", s_gutter_fg, s_gutter_bg, "")
s_h("CursorLineNr", s_fg, "", "")

s_h("DiffAdd", s_green, "", "")
s_h("DiffChange", s_yellow, "", "")
s_h("DiffDelete", s_red, "", "")
s_h("DiffText", s_blue, "", "")

s_h("IncSearch", s_bg, s_yellow, "")
s_h("Search", s_bg, s_yellow, "")

s_h("ErrorMsg", s_fg, "", "")
s_h("ModeMsg", s_fg, "", "")
s_h("MoreMsg", s_fg, "", "")
s_h("WarningMsg", s_red, "", "")
s_h("Question", s_purple, "", "")

s_h("Pmenu", s_fg, s_cursor_line, "")
s_h("PmenuSel", s_bg, s_blue, "")
s_h("PmenuSbar", "", s_cursor_line, "")
s_h("PmenuThumb", "", s_comment_fg, "")

s_h("SpellBad", s_red, "", "")
s_h("SpellCap", s_yellow, "", "")
s_h("SpellLocal", s_yellow, "", "")
s_h("SpellRare", s_yellow, "", "")

s_h("StatusLine", s_cursor_line, s_fg, "")
s_h("StatusLineNC", s_fg, s_cursor_line, "")

s_h("TabLine", s_comment_fg, s_cursor_line, "")
s_h("TabLineFill", s_comment_fg, s_cursor_line, "")
s_h("TabLineSel", s_bg, s_fg, "")

s_h("Visual", "", s_selection, "")
s_h("VisualNOS", "", s_selection, "")

s_h("ColorColumn", "", s_color_col, "")
s_h("Conceal", s_fg, "", "")
s_h("Directory", s_black, "", "")
s_h("VertSplit", s_fg, s_bg, "")
s_h("Folded", s_fg, s_cursor_line, "")
s_h("FoldColumn", s_fg, s_cursor_line, "")
s_h("SignColumn", s_fg, "", "")

s_h("MatchParen", s_blue, "", "underline")
s_h("SpecialKey", s_fg, "", "")
s_h("Title", s_green, "", "")
s_h("WildMenu", s_fg, "", "")

s_h("Comment", s_comment_fg, "", "italic")
s_h("Constant", s_debug, "", "")
s_h("String", s_green, "", "")
s_h("Character", s_green, "", "")
s_h("Number", s_blue, "", "")
s_h("Boolean", s_blue, "", "")
s_h("Float", s_yellow, "", "")

s_h("Identifier", s_cyan, "", "")
s_h("Function", s_cyan, "", "")
s_h("Statement", s_blue, "", "")

s_h("Conditional", s_blue, "", "")
s_h("Repeat", s_blue, "", "")
s_h("Label", s_blue, "", "")
s_h("Operator", s_fg, "", "")
s_h("Keyword", s_blue, "", "")
s_h("Exception", s_purple, "", "")

s_h("PreProc", s_yellow, "", "")
s_h("Include", s_purple, "", "")
s_h("Define", s_purple, "", "")
s_h("Macro", s_purple, "", "")
s_h("PreCondit", s_yellow, "", "")

s_h("Type", s_blue, "", "")
s_h("StorageClass", s_yellow, "", "")
s_h("Structure", s_yellow, "", "")
s_h("Typedef", s_yellow, "", "")

s_h("Special", s_blue, "", "")
s_h("SpecialChar", s_fg, "", "")
s_h("Tag", s_fg, "", "")
s_h("Delimiter", s_fg, "", "")
s_h("SpecialComment", s_fg, "", "")
s_h("Debug", s_fg, "", "")
s_h("Underlined", s_yellow, "", "underline")
s_h("Ignore", s_fg, "", "")
s_h("Error", s_red, s_gutter_bg, "")
s_h("Todo", s_blue, "", "italic")



s_h("typescriptBraces", s_black, "", "")
s_h("typescriptBlock", s_black, "", "")



s_h("diffAdded", s_green, "", "")
s_h("diffRemoved", s_red, "", "")


s_h("gitcommitComment", s_comment_fg, "", "")
s_h("gitcommitUnmerged", s_red, "", "")
s_h("gitcommitOnBranch", s_fg, "", "")
s_h("gitcommitBranch", s_purple, "", "")
s_h("gitcommitDiscardedType", s_red, "", "")
s_h("gitcommitSelectedType", s_green, "", "")
s_h("gitcommitHeader", s_fg, "", "")
s_h("gitcommitUntrackedFile", s_cyan, "", "")
s_h("gitcommitDiscardedFile", s_red, "", "")
s_h("gitcommitSelectedFile", s_green, "", "")
s_h("gitcommitUnmergedFile", s_yellow, "", "")
s_h("gitcommitFile", s_fg, "", "")
vim.cmd("hi link gitcommitNoBranch gitcommitBranch")
vim.cmd("hi link gitcommitUntracked gitcommitComment")
vim.cmd("hi link gitcommitDiscarded gitcommitComment")
vim.cmd("hi link gitcommitSelected gitcommitComment")
vim.cmd("hi link gitcommitDiscardedArrow gitcommitDiscardedFile")
vim.cmd("hi link gitcommitSelectedArrow gitcommitSelectedFile")
vim.cmd("hi link gitcommitUnmergedArrow gitcommitUnmergedFile")

vim.g.terminal_color_0 = s_black.gui
vim.g.terminal_color_1 = s_red.gui
vim.g.terminal_color_2 = s_green.gui
vim.g.terminal_color_3 = s_yellow.gui
vim.g.terminal_color_4 = s_blue.gui
vim.g.terminal_color_5 = s_purple.gui
vim.g.terminal_color_6 = s_cyan.gui
vim.g.terminal_color_7 = s_white.gui
vim.g.terminal_color_8 = s_black.gui
vim.g.terminal_color_9 = s_red.gui
vim.g.terminal_color_10 = s_green.gui
vim.g.terminal_color_11 = s_yellow.gui
vim.g.terminal_color_12 = s_blue.gui
vim.g.terminal_color_13 = s_purple.gui
vim.g.terminal_color_14 = s_cyan.gui
vim.g.terminal_color_15 = s_white.gui
vim.g.terminal_color_background = s_bg.gui
vim.g.terminal_color_foreground = s_fg.gui

vim.wo.colorcolumn = '120'
vim.wo.cursorline = true
vim.wo.cursorlineopt = 'both'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.shiftwidth = 4        -- shift 4 spaces when tab
vim.opt.tabstop = 4           -- 1 tab == 4 spaces
vim.opt.smartindent = true    -- autoindent new lines

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true})
vim.api.nvim_set_keymap('n', '<up>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<down>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<left>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<right>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<up>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<down>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<left>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<right>', '<Nop>', {noremap= true, silent = false})




