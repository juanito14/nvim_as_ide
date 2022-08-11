vim.wo.colorcolumn = '120'
vim.wo.cursorline = true
vim.wo.cursorlineopt = 'both'
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.shiftwidth = 4        -- shift 4 spaces when tab
vim.opt.tabstop = 4           -- 1 tab == 4 spaces
vim.opt.smartindent = true    -- autoindent new lines
vim.opt.confirm = true
vim.opt.laststatus = 3 -- global statusline
vim.opt.title = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1

-- disable tilde on end of buffer: https://github.com/neovim/neovim/pull/8546#issuecomment-643643758
vim.opt.fillchars = { eob = " " }
vim.opt.listchars = { space = '⸱'}
vim.opt.list = true

vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"


vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.timeoutlen = 400
vim.opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
vim.opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append "<>[]hl"


vim.g.mapleader = ";"
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true})
vim.api.nvim_set_keymap('n', '<up>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<down>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<left>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<right>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<up>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<down>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<left>', '<Nop>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('i', '<right>', '<Nop>', {noremap= true, silent = false})

-- fugitive
vim.api.nvim_set_keymap('n', '<leader>b', ':Git blame<CR>', {noremap = true})

-- quit and buffer delete
vim.api.nvim_set_keymap('', '<leader>q', ':q<CR>', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>d', ':bd<CR>', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>n', ':bn<CR>', {noremap = true})

-- nvim_tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true})

-- telescope
-- find
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>fa', '<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>fw', '<cmd>Telescope live_grep<cr>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', {noremap= true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>fk', '<cmd>Telescope keymaps<cr>', {noremap= true, silent = false})

-- git
vim.api.nvim_set_keymap('n', "<leader>cm",  "<cmd> Telescope git_commits <CR>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>gt",  "<cmd> Telescope git_status <CR>", {noremap = true})

-- pick a hidden term
vim.api.nvim_set_keymap('n', "<leader>pt", "<cmd> Telescope terms <CR>",  {noremap = true})

require('highlights')
require('plugins.configs.telescope')
require('plugins')
