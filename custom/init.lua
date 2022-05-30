-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

vim.wo.colorcolumn = '120'
vim.wo.cursorline = true
vim.wo.cursorlineopt = 'both'
vim.g.mapleader = ";"

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

-- MAPPINGS
local map = nvchad.map

map('i', 'jj', '<Esc>', {noremap = true})
map('', '<up>', '<Nop>', {noremap = true, silent = false})
map('', '<down>', '<Nop>', {noremap = true, silent = false})
map('', '<left>', '<Nop>', {noremap = true, silent = false})
map('', '<right>', '<Nop>', {noremap = true, silent = false})
map('i', '<up>', '<Nop>', {noremap = true, silent = false})
map('i', '<down>', '<Nop>', {noremap = true, silent = false})
map('i', '<left>', '<Nop>', {noremap = true, silent = false})
map('i', '<right>', '<Nop>', {noremap = true, silent = false})

-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
--
--
-- fugitive
map('', '<leader>b', ':Git blame<CR>', {noremap = true})

map('', '<leader>q', ':q<CR>', {noremap = true})
map('', '<leader>d', ':bd<CR>', {noremap = true})


-- lsp
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>k', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>j', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>l', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gdf', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>d', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

require'lspconfig'.clangd.setup{
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
}

