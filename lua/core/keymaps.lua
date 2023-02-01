vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')

vim.keymap.set('n', '<s-l>', ':bnext<cr>')
vim.keymap.set('n', '<s-h>', ':bprev<cr>')

