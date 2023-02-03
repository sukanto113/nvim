function flutter_set_auto_reload()
	local jobid = vim.b.terminal_job_id

	vim.api.nvim_create_autocmd("BufWritePost", {
		group = vim.api.nvim_create_augroup("Flutter", { clear=true }),
		callback = function ()
			vim.fn.jobsend(jobid, "r")
		end
	})
end

vim.api.nvim_create_user_command(
	'FlutterSetAutoreloadTerminal',
	'lua flutter_set_auto_reload()',
	{}
)
