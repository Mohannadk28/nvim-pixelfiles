-- * Shotcuts
local opt = vim.opt
local g = vim.g
local pywal = require('pywal')

-- * Editor Options 

-- ** Numbering
opt.number = true -- Enable Numbering
opt.relativenumber = true -- Reletive Numbers
opt.numberwidth = 4 -- Numbers Width

-- ** Indent to Spaces
opt.tabstop = 2 -- Space Width
opt.shiftwidth = 2
opt.expandtab = true -- Use Spaces insted of Indent
opt.smartindent = true

-- ** ColorScheme
opt.termguicolors = true -- set termguicolors to enable highlight groups
pywal.setup()

-- ** Disable Ntree
g.loaded_netrw       = 1
g.loaded_netrwPlugin = 1

-- * Plugin Settings

-- ** Nvim-Tree
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'pywal-nvim',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

vim.cmd([[
set viminfo+=n~/.config/nvim/viminfo
]])

