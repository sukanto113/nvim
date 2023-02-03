vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<A-h>', '<c-w>h')
vim.keymap.set('n', '<A-j>', '<c-w>j')
vim.keymap.set('n', '<A-k>', '<c-w>k')
vim.keymap.set('n', '<A-l>', '<c-w>l')

vim.keymap.set('n', '<s-l>', ':bnext<cr>')
vim.keymap.set('n', '<s-h>', ':bprev<cr>')
vim.keymap.set('n', '<s-c>', ':Bdelete<cr>')
vim.keymap.set('n', '<s-w>', ':w!<cr>')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', 'q', '<Esc>')
