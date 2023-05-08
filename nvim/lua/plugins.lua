-- [[ plugins.lua ]]

return require('packer').startup(function(use)
	-- [[ Plugins Go Here ]]
	use {												-- filesystem navigation
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'		-- filesystem icons
	}
	use {
			'nvim-lualine/lualine.nvim',
  			requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use { 'chrisbra/Colorizer' }						-- color codes

	-- [[ Dev ]]
	use {
		'nvim-telescope/telescope.nvim',				-- fuzzy finder
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 'majutsushi/tagbar' }							-- code structure
  	use { 'Yggdroot/indentLine' }						-- see indentation
  	-- use { 'tpope/vim-fugitive' }						-- git integration
  	-- use { 'junegunn/gv.vim' }                        -- commit history
  	use { 'windwp/nvim-autopairs' }						-- auto close brackets, etc.
end)

