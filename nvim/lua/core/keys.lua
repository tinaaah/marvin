--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode --> I don't like this
-- map('i', 'jk', '', {})

-- Toggle plugins
map('n', 'tr', [[:NvimTreeToggle]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
