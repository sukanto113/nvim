vim.api.nvim_create_user_command(
	'Do',
	[[ DiffviewOpen<CR> ]],
	{}
)

vim.api.nvim_create_user_command(
	'Dc',
	[[ DiffviewClose ]],
	{}
)
