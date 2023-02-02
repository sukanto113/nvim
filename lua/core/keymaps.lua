vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<leader>h', '<c-w>h')
vim.keymap.set('n', '<leader>j', '<c-w>j')
vim.keymap.set('n', '<leader>k', '<c-w>k')
vim.keymap.set('n', '<leader>l', '<c-w>l')

vim.keymap.set('n', '<s-l>', ':bnext<cr>')
vim.keymap.set('n', '<s-h>', ':bprev<cr>')
vim.keymap.set('n', '<s-c>', ':Bdelete<cr>')
vim.keymap.set('n', '<s-w>', ':w!<cr>')
