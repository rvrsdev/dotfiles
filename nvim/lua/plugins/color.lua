return {
    -- Theme
    {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
	    require('onedark').setup {
		style = 'darker'
	    }
	    require('onedark').load()
	end
    },
    -- Better line
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'onedark',
	}
    },
}
