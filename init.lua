-- map space as leader (needed for lazy)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local node_bin = '/Users/pupadhyay/.nvm/versions/node/v22.4.1/bin'
vim.cmd("let $PATH = '" .. node_bin .. ":' . $PATH")

require 'options'

-- install Lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { import = 'plugins' },
}, {
  install = {
    colorscheme = {
      'catppuccin',
      'habamax',
    },
  },
  change_detection = { enable = false },
})

require 'keymaps'
vim.cmd.colorscheme 'rose-pine-moon'
