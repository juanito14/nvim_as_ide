

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

return {
  Normal = {fg = s_fg.gui ,bg = s_bg.gui},
  NonText = {fg = s_gray.gui},
  Cursor = {fg = s_bg.gui ,bg = s_blue.gui},
  CursorColumn = {bg = s_cursor_line.gui},
  CursorLine = {bg = s_light_yellow.gui},
  LineNr = {fg = s_gutter_fg.gui ,bg = s_gutter_bg.gui},
  CursorLineNr = {fg = s_fg.gui},
  DiffAdd  = {fg = s_green.gui},
  DiffChange = {fg = s_yellow.gui},
  DiffDelete  = {fg = s_red.gui},
  DiffText = {fg = s_blue.gui},
  IncSearch = {fg = s_bg.gui, bg = s_yellow.gui},
  Search = {fg = s_bg.gui, bg = s_yellow.gui},
  ErrorMsg = {fg = s_fg.gui},
  ModeMsg = {fg = s_fg.gui},
  MoreMsg = {fg = s_fg.gui},
  WarningMsg = {fg = s_red.gui},
  Question = {fg = s_purple.gui},
  Pmenu = {fg = s_fg.gui, bg = s_cursor_line.gui},
  PmenuSel = {fg = s_bg.gui, bg = s_blue.gui},
  PmenuSbar = {bg = s_cursor_line.gui},
  PmenuThumb = {bg = s_comment_fg.gui},
  SpellBad = {fg = s_red.gui},
  SpellCap = {fg = s_yellow.gui},
  SpellLocal = {fg = s_yellow.gui},
  SpellRare = {fg = s_yellow.gui},
  StatusLine = {fg = s_cursor_line.gui, bg=s_fg.gui},
  StatusLineNC = {fg = s_fg.gui, bg=s_cursor_line.gui},
  TabLine = {fg = s_comment_fg.gui, bg=s_cursor_line.gui},
  TabLineFill = {fg = s_comment_fg.gui, bg=s_cursor_line.gui},
  TabLineSel = {fg = s_bg.gui, bg=s_fg.gui},
  Visual = {bg = s_selection.gui},
  VisualNOS = {bg = s_selection.gui},
  ColorColumn = {bg = s_color_col.gui},
  Conceal = {fg = s_fg.gui},
  Directory = {fg =  s_black.gui},
  VertSplit = {fg =  s_fg.gui, bg=s_bg.gui},
  Folded = {fg = s_fg.gui, bg=s_cursor_line.gui},
  FoldColumn = {fg = s_fg.gui, bg=s_cursor_line.gui},
  SignColumn = {fg = s_fg.gui},
  MatchParen = {fg = s_blue.gui},
  SpecialKey = {fg = s_fg.gui},
  Title = {fg = s_green.gui},
  WildMenu = {fg = s_fg.gui},
  Comment = {fg = s_comment_fg.gui},
  Constant = {fg = s_debug.gui},
  String = {fg = s_green.gui},
  Character = {fg = s_green.gui},
  Number = {fg = s_blue.gui},
  Boolean = {fg = s_blue.gui},
  Float = {fg = s_yellow.gui},
  Identifier= {fg = s_cyan.gui},
  Function= {fg =  s_cyan.gui},
  Statement= {fg =  s_blue.gui},
  Conditional= {fg =  s_blue.gui},
  Repeat= {fg =  s_blue.gui},
  Label= {fg =  s_blue.gui},
  Operator= {fg =  s_fg.gui},
  Keyword= {fg =  s_blue.gui},
  Exception= {fg =  s_purple.gui},
  PreProc= {fg =  s_yellow.gui},
  Include= {fg =  s_purple.gui},
  Define= {fg =  s_purple.gui},
  Macro= {fg =  s_purple.gui},
  PreCondit= {fg =  s_yellow.gui},
  Type= {fg =  s_blue.gui},
  StorageClass= {fg =  s_yellow.gui},
  Structure= {fg =  s_yellow.gui},
  Typedef= {fg =  s_yellow.gui},
  Special= {fg =  s_blue.gui},
  SpecialChar= {fg =  s_fg.gui},
  Tag= {fg =  s_fg.gui},
  Delimiter= {fg =  s_fg.gui},
  SpecialComment= {fg =  s_fg.gui},
  Debug= {fg =  s_fg.gui},
  Underlined= {fg =  s_yellow.gui},
  Ignore= {fg =  s_fg.gui},
  Error= {fg =  s_red.gui, bg=s_gutter_bg.gui},
  Todo= {fg =  s_blue.gui},
  typescriptBraces= {fg =  s_black.gui},
  typescriptBlock= {fg =  s_black.gui},
  diffAdded= {fg =  s_green.gui},
  diffRemoved= {fg =  s_red.gui},
  gitcommitComment= {fg =  s_comment_fg.gui},
  gitcommitUnmerged= {fg =  s_red.gui},
  gitcommitOnBranch= {fg =  s_fg.gui},
  gitcommitBranch= {fg =  s_purple.gui},
  gitcommitDiscardedType= {fg =  s_red.gui},
  gitcommitSelectedType= {fg =  s_green.gui},
  gitcommitHeader= {fg =  s_fg.gui},
  gitcommitUntrackedFile= {fg =  s_cyan.gui},
  gitcommitDiscardedFile= {fg =  s_red.gui},
  gitcommitSelectedFile= {fg =  s_green.gui},
  gitcommitUnmergedFile= {fg =  s_yellow.gui},
  gitcommitFile= {fg =  s_fg.gui},
}

