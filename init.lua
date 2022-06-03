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

-- Plugins
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'APZelos/blamer.nvim'
end)

-- UI
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true
vim.bo.smartindent = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.termguicolors = true

vim.api.nvim_command('let g:blamer_show_in_insert_modes = 0')
