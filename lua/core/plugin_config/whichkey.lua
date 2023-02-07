local wk = require("which-key")

local mappings = {
	q = { ":q<CR>", "Quit" },
	b = { "<cmd>Telescope buffers<cr>", "Buffers" },
	e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
	v = { "<cmd>vsplit<cr>", "vsplit" },
	h = { "<cmd>split<cr>", "split" },
	w = { "<cmd>w!<CR>", "Write" },
	c = { "<cmd>Bdelete<CR>", "Close Buffer" },
	C = { "<cmd>Bdelete!<CR>", "Force Close Buffer" },
	x = { "<cmd>close<CR>", "Close Window" },
	p = { '"+p', "Paste" },
	y = { '"+yy', "Copy Line" },
	["/"] = { "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", "Comment" },

	f = {
		name = "Find",
		b = { "<cmd>Telescope buffers<cr>", "buffers" },
		c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		f = { "<cmd>Telescope find_files<cr>", "Find files" },
		t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
		s = { "<cmd>Telescope grep_string<cr>", "Find String" },
		h = { "<cmd>Telescope help_tags<cr>", "Help" },
		H = { "<cmd>Telescope highlights<cr>", "Highlights" },
		i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
		l = { "<cmd>Telescope resume<cr>", "Last Search" },
		M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
		R = { "<cmd>Telescope registers<cr>", "Registers" },
		k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		C = { "<cmd>Telescope commands<cr>", "Commands" },
	},
	g = {
		name = "Git",
		g = { "<cmd>lua require('toggleterm.terminal').Terminal:new({ cmd = 'lazygit', hidden = true }):toggle()<CR>",
			"Lazygit" },
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
		-- l = { "<cmd>GitBlameToggle<cr>", "Blame" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
		u = {
		  "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
		  "Undo Stage Hunk",
		},
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		d = {
			'<cmd>TermExec cmd="git diff --ignore-all-space %"<cr>',
			"Diff",
		},
	},
	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		j = {
			"<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
			"Next Diagnostic",
		},
		k = {
			"<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>",
			"Prev Diagnostic",
		},
		l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
		q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		S = {
			"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
			"Workspace Symbols",
		},
		d = { "<cmd>lua = vim.diagnostic.open_float()<CR>", "Show Diagonstic" },
	},
  s = {
    name = "Session",
    s = { "<cmd>SSave<cr>", "Save" },
    c = { "<cmd>SClose<cr>", "Close" },
    d = { "<cmd>SDelete<cr>", "Delete" },
    l = { "<cmd>SLoad<cr>", "Load" },
  },
}
local opts = {
	prefix = '<leader>'
}
wk.setup({
	triggers = { "<leader>" }
})
wk.register(mappings, opts)
