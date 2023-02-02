require 'nvim-treesitter.install'.compilers = {"gcc"}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {'lua', 'json', 'html'},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
