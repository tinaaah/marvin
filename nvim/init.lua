--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('core/vars')      -- Variables
require('core/opts')      -- Options
require('plugins')      -- Plugins
require('core/keys')      -- Keymaps

-- PLUGINS: Add this section
require('nvim-tree').setup{}
require('nvim-autopairs').setup{} -- Add this line
require('lualine').setup{}
