" autoreload init.vim on write
autocmd! bufwritepost *.vim source ~/.config/nvim/init.vim

" enable lua support
let g:lua_enabled=1

" code environment
source ~/.config/nvim/scripts/env/env.vim

" plugins
source ~/.config/nvim/scripts/plugins.vim

" keymaps
source ~/.config/nvim/scripts/keymaps.vim

" colors scheme
source ~/.config/nvim/scripts/colorscheme.vim

" show number line 
set number

" i use archlinux btw
runtime! archlinux.vim

" i dont know what is this 
helptags ~/.config/nvim/doc

" enable mouse
set mouse+=a

" enable syntax
syntax on

" enable auto indent
set autoindent

" enable smart indent
set smartindent

" disable swapfile
set noswapfile

" enable copy clipboard to system clipboard
set clipboard+=unnamedplus

" set background dark
set background=dark

augroup env_config
	" enable rainbow brackets
	let g:rainbow_active = 1

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

	" show git code diff 
	autocmd FileType * BlamerShow
augroup END

" === enable autocomplete with neovim language client
let g:LanguageClient_serverCommands = {'go': ['gopls'], 'java': ['jdtls']}

