vim.api.nvim_command(':set relativenumber')
vim.opt.number = true
vim.o.wrap = false
vim.bo.tabstop = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.expandtab = true
vim.api.nvim_command(':set list listchars=tab:>>,trail:-,eol:↲')
--vim.api.nvim_command(':set list listchars=tab:>>,trail:-,eol:↵')
