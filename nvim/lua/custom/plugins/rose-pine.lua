return {
	'rose-pine/neovim',
	lazy = false,
	config = function()
		require('rose-pine').setup {
			variant = 'main',
		}
		vim.cmd 'colorscheme rose-pine'
	end,
}
