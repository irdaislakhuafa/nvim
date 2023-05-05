" autoreload init.vim on write
autocmd! bufwritepost *.vim source ~/.config/nvim/init.vim

" enable lua support
let g:lua_enabled=1

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
