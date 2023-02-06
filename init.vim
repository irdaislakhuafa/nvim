" autoreload init.vim on write
autocmd! bufwritepost init.vim source %

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

" enable lua support
let g:lua_enabled=1

" plugins
call plug#begin()
	" nerdtree file browser 
	Plug 'scrooloose/nerdtree'

	" fzf file browser
	Plug 'junegunn/fzf'

	" Go IDE
	Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
	
	" Java IDE
	Plug 'mfussenegger/nvim-jdtls'

	" live autocomplete
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

	" neovim language client
	Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': './install.sh'}
	Plug 'neovim/nvim-lspconfig'

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

call plug#end()

" enable copy clipboard to system clipboard
set clipboard+=unnamedplus

" set background dark
set background=dark

" === NERDTree ===
noremap <C-l> :NERDTreeToggle<CR>

" === Go Environment ===
augroup go_env
	
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
	
	" - disable gopls in fatih/vim-go  because i need go commands from
	"   vim-go but ray-x/go.nvim are more better for auto complete and
	"   each plugin above use different gopls and consume much memory
	let g:go_fmt_command = "goimports"

	" - pop up go docs
	"let g:go_doc_popup_window=1
	
	" - enable coc global extension
	"let g:coc_global_extensions = ['coc-go']

	" --- shortcut --- 
	" - add json tags in Go
	autocmd FileType go noremap <C-j> :GoAddTags<CR>
	
	" - go to function/method definition
	autocmd FileType go noremap <C-d><C-d> :GoDef<CR>
	
	" - go to type definition
	autocmd FileType go noremap <C-d><C-t> :GoDefType<CR>
	
	" - go to others function/method definition
	autocmd FileType go noremap <C-d><C-f> :GoDecls<CR>
	
	" - go documentation viewer
	autocmd FileType go noremap <C-o><C-d> :GoDoc<CR>
	
	" - go mod reload
	autocmd FileType go noremap <C-m><C-r> :GoModReload<CR>

	" - go fill struct
	autocmd FileType go noremap <C-f><C-s> :GoFillStruct<CR>

	" - go remove tags
	autocmd FileType go noremap <C-r><C-t> :GoRemoveTags<CR>
	
	" - autocomplete on write
	"setlocal omnifunc=go#complete#Complete
	"set completeopt=menuone
augroup END


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
augroup my_keymap

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

	" - redo 
	noremap <C-y> :redo<CR>

	" - go to previus tab
	noremap <C-b> :e#<CR>

	" - resize vertical+
	noremap <C-w><C-right> :vertical res +10<CR>

	" - resize vertical-
	noremap <C-w><C-left> :vertical res -10<CR>

	" - resize horizontal+
	noremap <C-w><C-up> :res +10<CR>

	" - resize horizontal-
	noremap <C-w><C-down> :res -10<CR>

	" - fzf file browser
	noremap <C-f> :FZF<CR>
augroup END

" === enable autocomplete with neovim language client
let g:LanguageClient_serverCommands = {'go': ['gopls']}

" === session
augroup save_session
	" - save session
	autocmd VimLeave * mksession! .session.vim
	" - load session
	autocmd VimEnter * source .session.vim
augroup END
autocmd! save_session

