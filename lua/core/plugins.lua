local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'moll/vim-bbye'
  use 'lewis6991/gitsigns.nvim'
	use 'L3MON4D3/LuaSnip'
	use 'folke/trouble.nvim'
	use 'mhinz/vim-startify'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
	use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
	}
	-- Completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'

	use {
		"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
	}
--  use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'akinsho/bufferline.nvim',
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use {
   'nvim-telescope/telescope.nvim',
   requires = { {'nvim-lua/plenary.nvim'} }
  }
	use {'nvim-telescope/telescope-ui-select.nvim' }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
	use "akinsho/toggleterm.nvim"
	use 'phaazon/hop.nvim'
  use 'voldikss/vim-floaterm'
  use 'ptzz/lf.vim'
  use "lukas-reineke/indent-blankline.nvim"

-- Packer
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
	use {"folke/which-key.nvim"}
	-- require('diffview').setup()
	-- Theme
	use 'ellisonleao/gruvbox.nvim'
	use 'arcticicestudio/nord-vim'
	use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'

	-- use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
