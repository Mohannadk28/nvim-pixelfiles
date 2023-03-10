

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { "lewis6991/impatient.nvim"}

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  -- Nord Theme
  use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  -- Nvim-Tree
  use {
   'nvim-tree/nvim-tree.lua',
   requires = {
     'nvim-tree/nvim-web-devicons', -- optional, for file icons
   },
   tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'fatih/vim-go'

  -- Treesitter
  use {
   'nvim-treesitter/nvim-treesitter'
  }

  -- Telescope
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.1',
   -- or                            , branch = '0.1.x',
   requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup({theme = "dashboard"})
    end
  }

  use 'ap/vim-css-color' -- Vim-CSS-Color
  use 'habamax/vim-godot' -- Vim-Godot
  use 'wuelnerdotexe/vim-astro' --Vim-Astro

end)

-- NvimTree


