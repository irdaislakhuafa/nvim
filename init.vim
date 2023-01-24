" autoreload init.vim on write
autocmd! bufwritepost init.vim source %

" show number line 
set number

" i use archlinux btw
runtime! archlinux.vim

" i dont know what is this 
helptags ~/.config/nvim/doc

" default key map
""inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
""inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>

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

" plugins
call plug#begin()
	" nerdtree file browser 
	Plug 'scrooloose/nerdtree'

	" Go IDE
	Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }

	" live autocomplete
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

	" live autocomplete like vs code
	"Plug 'neoclide/coc.nvim', {'branch': 'master'}
	
	" neovim language client
	Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}	
	" add icons
	Plug 'ryanoasis/vim-devicons'

	" graphql file support
	Plug 'jparise/vim-graphql'

	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" multiple cursor plugins
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}

	" color scheme
	Plug 'rktjmp/lush.nvim'
call plug#end()

" enable copy clipboard to system clipboard
set clipboard+=unnamedplus

" set background dark
set background=dark

" === NERDTree ===
noremap <C-l> :NERDTreeToggle<CR>

" === Go Environment ===
" - run go error check after write it
"autocmd! bufwritepost *.go :GoErrCheck

" - enable go autocomplete at start up
let g:deoplete#enable_at_startup = 1

" - enable hightlight type in Go
let g:go_highlight_type=1

" - enable Go hightlight generated tags
let g:go_highlight_generate_tags=1

" - enable hightlight operators in Go
let g:go_highlight_operators=1

" - enable hightlight extra type in Go
let g:go_highlight_extra_types=1

" - enable hightlight function in Go
let g:go_highlight_functions=1

" - enable hightlight on call function
let g:go_highlight_function_calls=1

" - enable hightlight on Go fields
let g:go_highlight_fields=1

" - enable hightlight for build constrains Go
let g:go_highlight_build_constraints=1

" --- shortcut --- 
" - add json tags in Go
noremap <C-g><C-j> :GoAddTags<CR>

" - go to function/method definition
noremap <C-g><C-d><C-f> :GoDef<CR>

" - go to type definition
noremap <C-g><C-d><C-t> :GoDefType<CR>

" - go to others function/method definition
noremap <C-g><C-f> :GoDecls<CR>

" - go documentation viewer
noremap <C-g><C-o><C-v> :GoDoc<CR>

" - go mod reload
noremap <C-g><C-m><C-r> :GoModReload<CR>

" - autocomplete on write
setlocal omnifunc=go#complete#Complete
set completeopt=menuone
" call deoplete#custom#option('omni_patterns', {
" \ 'go': '[^. *\t]\.\w*',
" \})



" === custom autocomplete themes ===
" - set menu autocomplete color
highlight Pmenu ctermbg=blue ctermfg=white

" - set selected menu autocomplete color
highlight PmenuSel ctermbg=white ctermfg=blue

" === auto close brackets ===
" - ()
inoremap ( ()<left>
inoremap (> (<CR><CR>)<up><tab>

" - {}
inoremap { {}<left>
inoremap {> {<CR><CR>}<left><up><tab>

" - []
inoremap [ []<left>
inoremap [> [<CR><CR>]<up><tab>

" - ''
inoremap ' ''<left>

" - ""
inoremap " ""<left>

" - <>
inoremap <> <><left>

" - ``
inoremap ` ``<left>

" - ;
inoremap ;. ;<CR>

" - ,
inoremap ,. ,<CR>

" === my custom keyboard shortcut ===
" - close window
noremap <C-i><C-w> :q<CR>

" - save file
noremap <C-i><C-s> :w<CR>

" - save file and exit
noremap <C-i><C-x> :x<CR>

" - duplicate line
noremap <C-i><C-d> :t .<CR>

" - save file 
noremap <C-s> :w<CR>

" === enable autocomplete with neovim language client
let g:LanguageClient_serverCommands = {'go': ['gopls']}
" autocomplete with deoplete
autocmd FileType go call deoplete#enable()

