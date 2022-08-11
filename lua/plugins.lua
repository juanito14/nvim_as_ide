return require('packer').startup(function(use)
    -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', 
    requires = { {'nvim-lua/plenary.nvim'} }
  }


   use {'lewis6991/impatient.nvim'}

   use {"ntk148v/komau.vim"}

   use {'kyazdani42/nvim-web-devicons',
      config = function()
         require "plugins.configs.icons"
      end
   }

   use {'feline-nvim/feline.nvim',
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.statusline"
      end
   }

   use {'SmiteshP/nvim-gps',
      event = "CursorMoved",
      config = function()
         require "plugins.configs.gps"
      end
   }

   use {'akinsho/bufferline.nvim',
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.bufferline"
      end
   }

   use {'lukas-reineke/indent-blankline.nvim',
      event = "BufRead",
      config = function()
         require("plugins.configs.others").blankline()
      end
   }


   use {'nvim-treesitter/nvim-treesitter',
      event = { "BufRead", "BufNewFile" },
      run = ":TSUpdate",
      config = function()
         require "plugins.configs.treesitter"
      end
   }

   -- git stuff
   use {'lewis6991/gitsigns.nvim',
      opt = true,
      config = function()
         require("plugins.configs.others").gitsigns()
      end,
      setup = function()
         require("plugins.utils").packer_lazy_load "gitsigns.nvim"
      end
   }

   -- lsp stuff

   use {'williamboman/nvim-lsp-installer',
      opt = true,
      setup = function()
         require("plugins.utils").packer_lazy_load "nvim-lsp-installer"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
         end, 0)
      end
   }

   use {'neovim/nvim-lspconfig',
      after = "nvim-lsp-installer",
      module = "lspconfig",
      config = function()
         require "plugins.configs.lsp_installer"
         require "plugins.configs.lspconfig"
      end
   }

   use {'ray-x/lsp_signature.nvim',
      after = "nvim-lspconfig",
      config = function()
         require("plugins.configs.others").signature()
      end
   }

   use {'max397574/better-escape.nvim',
      event = "InsertCharPre",
      config = function()
         require("plugins.configs.others").better_escape()
      end
   }

   -- load luasnips + cmp related in insert mode only

   use {'rafamadriz/friendly-snippets',
      module = "cmp_nvim_lsp",
      event = "InsertEnter"
   }

   use {'hrsh7th/nvim-cmp',
      after = "friendly-snippets",
      config = function()
         require "plugins.configs.cmp"
      end
   }

   use {'L3MON4D3/LuaSnip',
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").luasnip()
      end
   }

   use {'saadparwaiz1/cmp_luasnip',
      after = "LuaSnip"
   }

   use {'hrsh7th/cmp-nvim-lua',
      after = "cmp_luasnip"
   }

   use {'hrsh7th/cmp-nvim-lsp',
      after = "cmp-nvim-lua"
   }

   use {'hrsh7th/cmp-buffer',
      after = "cmp-nvim-lsp"
   }

   use {'hrsh7th/cmp-path',
      after = "cmp-buffer"
   }

   -- misc plugins
   use {'windwp/nvim-autopairs',
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").autopairs()
      end
   }

   use {'goolord/alpha-nvim',
      disable = true,
      config = function()
         require "plugins.configs.alpha"
      end
   }

   use {'numToStr/Comment.nvim',
      module = "Comment",
      keys = { "gc", "gb" },
      config = function()
         require("plugins.configs.others").comment()
      end
   }

   -- file managing , picker etc
   use {'kyazdani42/nvim-tree.lua',
      ft = "alpha",
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
         require "plugins.configs.nvimtree"
      end
   }


   use {'folke/which-key.nvim',
      opt = true,
      setup = function()
         require("plugins.utils").packer_lazy_load "which-key.nvim"
      end,
      config = function()
         require "plugins.configs.whichkey"
      end
   }

    use {"tpope/vim-fugitive"}

end)
