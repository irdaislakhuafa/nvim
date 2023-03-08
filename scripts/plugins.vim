call plug#begin()
	" nerdtree file browser 
	Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
	Plug 'nvim-tree/nvim-tree.lua'

	" text case modification
	Plug 'arthurxavierx/vim-caser'

	" fzf file browser
	Plug 'junegunn/fzf'

	" Go IDE
	Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }

	" Java IDE
	Plug 'mfussenegger/nvim-jdtls'
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'neoclide/coc-java'
	
	" Emmet for HTML
	Plug 'mattn/emmet-vim'

	" JSON and YAML autoformat
	Plug 'gennaro-tedesco/nvim-jqx'	

	" Dockerfile support
	Plug 'ekalinin/dockerfile.vim'

	" Indentation guides
	"Plug 'nathanaelkane/vim-indent-guides'

	" code formatter
	"Plug 'chiel92/vim-autoformat'
	Plug 'sbdchd/neoformat'

	" vim auto pair
	Plug 'jiangmiao/auto-pairs'

	" neovim language client
	Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': './install.sh'}
	Plug 'neovim/nvim-lspconfig'

	" syntax hightlighting

	" add icons
	"Plug 'ryanoasis/vim-devicons'

	" graphql file support
	Plug 'jparise/vim-graphql'

	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" multiple cursor plugins
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}

	" vim test to show code coverage
	Plug 'vim-test/vim-test'

	" move line
	Plug 'matze/vim-move'

	" rainbow bracket
	Plug 'luochen1990/rainbow'
	Plug 'kien/rainbow_parentheses.vim'

	" git wrapper
	Plug 'tpope/vim-fugitive'

	" show git diff
	Plug 'airblade/vim-gitgutter'
	" git blamer like git lens
	Plug 'APZelos/blamer.nvim'

	" neovim autocomplete
   	Plug 'hrsh7th/cmp-nvim-lsp'
   	Plug 'hrsh7th/cmp-buffer'
   	Plug 'hrsh7th/cmp-path'
   	Plug 'hrsh7th/cmp-cmdline'
   	Plug 'hrsh7th/nvim-cmp'
      
	" neovim autocomplete For vsnip users.
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'

	" nvim nvim-treesitter
	Plug 'nvim-treesitter/nvim-treesitter'
	"Plug 'kien/rainbow_parentheses.vim'

	" Aligning text with Tabular.vim
	Plug 'godlygeek/tabular'

	" Mason package manager
	Plug 'williamboman/mason.nvim'	

	" vs code dark+ color scheme
	Plug 'martinsione/darkplus.nvim'
call plug#end()
