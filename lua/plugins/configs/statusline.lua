local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')
local lsp_severity = vim.diagnostic.severity

local colors = {
  bg = '#282828',
  black = '#282828',
  yellow = '#d8a657',
  cyan = '#89b482',
  oceanblue = '#45707a',
  green = '#a9b665',
  orange = '#e78a4e',
  violet = '#d3869b',
  magenta = '#c14a4a',
  white = '#a89984',
  fg = '#a89984',
  skyblue = '#7daea3',
  red = '#ea6962',
}

local vi_mode_colors = {
  NORMAL = 'green',
  OP = 'green',
  INSERT = 'red',
  CONFIRM = 'red',
  VISUAL = 'skyblue',
  LINES = 'skyblue',
  BLOCK = 'skyblue',
  REPLACE = 'violet',
  ['V-REPLACE'] = 'violet',
  ENTER = 'cyan',
  MORE = 'cyan',
  SELECT = 'orange',
  COMMAND = 'green',
  SHELL = 'green',
  TERM = 'green',
  NONE = 'yellow'
}

local vi_mode_text = {
  NORMAL = 'NORMAL',
  OP = 'OP',
  INSERT = 'INSERT',
  VISUAL = 'VISUAL',
  LINES = 'LINES',
  BLOCK = 'BLOCK',
  REPLACE = 'REPLACE',
  ['V-REPLACE'] = 'V-REPLACE',
  ENTER = 'ENTER',
  MORE = 'MORE',
  SELECT = 'SELECT',
  COMMAND = 'COMMAND',
  SHELL = 'SHELL',
  TERM = 'TERM',
  NONE = 'NONE',
  CONFIRM = 'CONFIRM'
}


local components = {
    active = {},
    inactive = {}
}

table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})

table.insert(components.inactive, {})
table.insert(components.inactive, {})
table.insert(components.inactive, {})

-- LEFT
-- vi-symbol
components.active[1][1] = {
  provider = function()
    return vi_mode_text[vi_mode_utils.get_vim_mode()]
  end,
  hl = function()
    local val = {}
    val.fg = vi_mode_utils.get_mode_color()
    val.bg = 'bg'
    val.style = 'bold'
    return val
  end,
  right_sep = ' '
}
-- filename
components.active[1][2] = {
  provider = function()
    return vim.fn.expand("%:F")
  end,
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' '
}
-- file icon
components.active[1][3] = {
  provider = function()
    local filename = vim.fn.expand('%:t')
    local extension = vim.fn.expand('%:e')
    local icon  = require'nvim-web-devicons'.get_icon(filename, extension)
    if icon == nil then
      icon = ''
    end
    return icon
  end,
  hl = function()
    local val = {}
    local filename = vim.fn.expand('%:t')
    local extension = vim.fn.expand('%:e')
    local icon, name  = require'nvim-web-devicons'.get_icon(filename, extension)
    if icon ~= nil then
      val.fg = vim.fn.synIDattr(vim.fn.hlID(name), 'fg')
    else
      val.fg = 'white'
    end
    val.bg = 'bg'
    val.style = 'bold'
    return val
  end,
  right_sep = ' '
}
-- fileType
components.active[1][4] = {
  provider = 'file_type',
  hl = function()
    local val = {}
    local filename = vim.fn.expand('%:t')
    local extension = vim.fn.expand('%:e')
    local icon, name  = require'nvim-web-devicons'.get_icon(filename, extension)
    if icon ~= nil then
      val.fg = vim.fn.synIDattr(vim.fn.hlID(name), 'fg')
    else
      val.fg = 'white'
    end
    val.bg = 'bg'
    val.style = 'bold'
    return val
  end,
  right_sep = ' '
}
-- fileSize
components.active[1][5] = {
  provider = 'file_size',
  enabled = function() return vim.fn.getfsize(vim.fn.expand('%:t')) > 0 end,
  hl = {
    fg = 'skyblue',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' '
}
-- fileFormat
components.active[1][6] = {
  provider = function() return '' .. vim.bo.fileformat:upper() .. '' end,
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' '
}
-- fileEncode
components.active[1][7] = {
  provider = 'file_encoding',
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' |  '
}

-- lsp
components.active[1][8] = {
      provider = "diagnostic_errors",
      enabled = function()
         return lsp.diagnostics_exist(lsp_severity.ERROR)
      end,
      hl = {
        fg = 'white',
        bg = 'bg',
        style = 'bold'
      },
      icon = "  ",
   right_sep = ' '
}

components.active[1][9] = {
      provider = "diagnostic_warnings",
      enabled = function()
         return lsp.diagnostics_exist(lsp_severity.WARN)
      end,
      hl = {
        fg = 'white',
        bg = 'bg',
        style = 'bold'
      },
      icon = "  ",
   right_sep = ' '
}

components.active[1][10] = {
      provider = "diagnostic_hints",
      enabled = function()
         return lsp.diagnostics_exist(lsp_severity.HINT)
      end,
      hl = {
        fg = 'white',
        bg = 'bg',
        style = 'bold'
      },
      icon = "  ",
   right_sep = ' '
}

components.active[1][11] = {
      provider = "diagnostic_info",
      enabled = function()
         return lsp.diagnostics_exist(lsp_severity.INFO)
      end,
      hl = {
        fg = 'white',
        bg = 'bg',
        style = 'bold'
      },
      icon = "  ",
   right_sep = ' '
}

components.active[1][12] = {
   provider = function()
      if next(vim.lsp.buf_get_clients()) ~= nil then
         local lsp_name = vim.lsp.get_active_clients()[1].name

         return "   LSP ~ " .. lsp_name .. " "
      else
         return ""
      end
   end,
    hl = {
        fg = 'white',
        bg = 'bg',
        style = 'bold'
      },

   right_sep = ' '
}

components.active[1][13] = {
   provider = function()
      local Lsp = vim.lsp.util.get_progress_messages()[1]

      if not Lsp then
         return ""
      end

      local msg = Lsp.message or ""
      local percentage = Lsp.percentage or 0
      local title = Lsp.title or ""
      local spinners = { "", "" }

      local ms = vim.loop.hrtime() / 1000000
      local frame = math.floor(ms / 120) % #spinners

      return string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
   end,
    hl = {
        fg = 'white',
        bg = 'bg',
        style = 'bold'
      },

}

-- MID
components.active[2] = {}

-- RIGHT
--  nvim_gps
components.active[3][1] = {
   provider = function()
      -- nvim-gps loads at cursorMoved so need to handle this
      local gps_loaded, gps = pcall(require, "nvim-gps")

      if not gps_loaded then
         return
      end

      return " " .. gps.get_location()
   end,

   enabled = function()
      local gps_loaded, gps = pcall(require, "nvim-gps")

      if not gps_loaded then
         return false
      end

      return gps.is_available()
   end,

   hl = {
       fg = 'skyblue',
       bg = 'bg',
       style = 'bold'
   },
   right_sep = '  | '
}
-- position
components.active[3][2] = {
  provider = 'position',
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' '
}
-- linePercent
components.active[3][3] = {
  provider = 'line_percentage',
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' '
}
-- scrollBar
components.active[3][4] = {
  provider = 'scroll_bar',
  hl = {
    fg = 'skyblue',
    bg = 'bg',
  },
  right_sep = ' '
}
-- git branch
components.active[3][5] = {
provider = 'git_branch',
  hl = {
    fg = 'green',
    bg = 'bg',
    style = 'bold'
  }
}


require 'feline'.setup {
    components = components,
}

