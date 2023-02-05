vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap = true }
-- window riding keymaps
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<C-h>', '<c-w>h', opts)
vim.keymap.set('n', '<C-j>', '<c-w>j', opts)
vim.keymap.set('n', '<C-k>', '<c-w>k', opts)
vim.keymap.set('n', '<C-l>', '<c-w>l', opts)

vim.keymap.set('n', '<C-Up>', ":resize +1<CR>", opts)
vim.keymap.set('n', '<C-Down>', ":resize -1<CR>", opts)
vim.keymap.set('n', '<C-Left>', ":vertical resize -1<CR>", opts)
vim.keymap.set('n', '<C-Right>', ":vertical resize +1<CR>", opts)

vim.keymap.set('n', '<s-l>', ':bnext<cr>')
vim.keymap.set('n', '<s-h>', ':bprev<cr>')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', 'q', '<Esc>')

-- telescope keymaps
-- local builtin = require('telescope.builtin')
-- -- copy and paste from windows c-c and c-v
-- vim.keymap.set('v', '<leader>y', '"+y', opts)
-- vim.keymap.set('v', '<leader>p', '"+p', opts)
--
-- escape from terminal mode
vim.keymap.set('t', '<C-\\>', "<C-\\><C-n>", opts)

-- hop key bindings
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ current_line_only = false })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ current_line_only = false, hint_offset = -1 })
end, {remap=true})

