" neovim cmp config
lua require('config.nvim-cmp')

" indent guides
lua require('config.indent-blankline')

" setup mason portable package manager
lua require("mason").setup()	

" rainbow parentheses mas token
let g:rbpt_max = 100

" Nvim tree file explorer
lua require("nvim-tree").setup()
