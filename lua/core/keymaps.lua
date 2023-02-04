vim.g.mapleader = ';'
vim.g.maplocalleader = ';'

-- window riding keymaps
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<C-h>', '<c-w>h')
vim.keymap.set('n', '<C-j>', '<c-w>j')
vim.keymap.set('n', '<C-k>', '<c-w>k')
vim.keymap.set('n', '<C-l>', '<c-w>l')

vim.keymap.set('n', '<s-l>', ':bnext<cr>')
vim.keymap.set('n', '<s-h>', ':bprev<cr>')
vim.keymap.set('n', '<s-c>', ':Bdelete<cr>')
vim.keymap.set('n', ';w', ':w!<cr>')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', 'q', '<Esc>')

-- telescope keymaps
local opts = { noremap = true }
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
vim.keymap.set('n', '<leader>fc', builtin.commands, opts)

-- copy and paste from windows c-c and c-v
vim.keymap.set('v', '<leader>y', '"+y', opts)
vim.keymap.set('n', '<leader>y', '"+y', opts)
vim.keymap.set('n', '<leader>yy', '"+yy', opts)
vim.keymap.set('v', '<leader>p', '"+p', opts)
vim.keymap.set('n', '<leader>p', '"+p', opts)

-- escape from terminal mode
vim.keymap.set('t', '<C-\\>', "<C-\\><C-n>", opts)

-- configer lazygit
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

-- hop key bindings
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ current_line_only = false })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ current_line_only = false, hint_offset = -1 })
end, {remap=true})

