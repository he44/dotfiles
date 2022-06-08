-- Keybindings
vim.g.mapleader = " "
local keymap = vim.api.nvim_set_keymap
-- Escape too far to reach.
keymap('i', 'jk', '<Esc>', {})
local opts = { noremap = true }
-- Swapping semi-colon and colon so that I don't have to remap "Wq" to "wq".
keymap('n', ':', ';', opts)
keymap('n', ';', ':', opts)
-- Mappings for going between files
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope file_browser<cr>', opts)
keymap('n', '<leader>lg', '<cmd>Telescope live_grep<cr>', opts)
keymap('n', '<c-n>', '<cmd>noh<cr>', opts)

-- Plugins
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'APZelos/blamer.nvim'
  use 'Vimjas/vim-python-pep8-indent'
  use 'chriskempson/base16-vim'
end)

-- UI
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true


vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd("colorscheme base16-tomorrow-night")
vim.o.termguicolors = true

vim.api.nvim_command('let g:blamer_show_in_insert_modes = 0')

local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_installed = {"cpp", "python", "lua"},
  highlight = {
    enable = true,
  }
}
