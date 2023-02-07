vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	view = {
		preserve_window_proportions = true,
	},
	actions = {
		open_file = {
			resize_window = false,
		},
	},
})

