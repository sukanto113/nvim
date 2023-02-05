vim.api.nvim_command(':set relativenumber')
vim.opt.number = true
vim.o.wrap = false
vim.bo.tabstop = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.expandtab = true
vim.opt.cursorline = true
vim.opt.listchars = { tab = "  ", eol = '↲', trail = '-'}
vim.opt.list = true
vim.g.lf_map_keys = 0
vim.o.timeout = true
vim.o.timeoutlen = 1000
vim.api.nvim_command(':highlight WinSeparator guibg=None')
vim.api.nvim_command(':set laststatus=3')
vim.api.nvim_command[[:set winbar=%=%m\ %f]]
