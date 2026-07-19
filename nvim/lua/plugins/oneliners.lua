return {
    { -- Git plugin
	'tpope/vim-fugitive',	
    },
    { -- Show css colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
}
