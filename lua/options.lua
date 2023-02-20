-- * Shotcuts
local opt = vim.opt
local g = vim.g

-- * Editor Options 

-- ** Numbering
opt.number = true -- Enable Numbering
opt.relativenumber = true -- Reletive Numbers
opt.numberwidth = 4 -- Numbers Width

-- ** Indent to Spaces
opt.tabstop = 4 -- Space Width
opt.expandtab = true -- Use Spaces insted of Indent

-- ** ColorScheme
opt.termguicolors = true -- set termguicolors to enable highlight groups

-- ** Disable Ntree
g.loaded_netrw       = 1
g.loaded_netrwPlugin = 1

-- Sets The ColorScheme to Nord and Makes The Background Color Solid
vim.cmd([[
colorscheme nord 
highlight Normal ctermbg=0
]])

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

-- ** Hardline
require('hardline').setup {
  bufferline = false,  -- disable bufferline
  bufferline_settings = {
    exclude_terminal = false,  -- don't show terminal buffers in bufferline
    show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
  },
  theme = 'nord',   -- change theme
  sections = {         -- define sections
    {class = 'mode', item = require('hardline.parts.mode').get_item},
    {class = 'high', item = require('hardline.parts.git').get_item, hide = 100},
    {class = 'med', item = require('hardline.parts.filename').get_item},
    '%<',
    {class = 'med', item = '%='},
    {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 100},
    {class = 'error', item = require('hardline.parts.lsp').get_error},
    {class = 'warning', item = require('hardline.parts.lsp').get_warning},
    {class = 'warning', item = require('hardline.parts.whitespace').get_item},
    {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 60},
    {class = 'mode', item = require('hardline.parts.line').get_item},
  },
}

vim.cmd([[
set viminfo+=n~/.config/nvim/viminfo
]])

