" autoreload init.vim on write
autocmd! bufwritepost init.vim source %

" plugins
source ~/.config/nvim/scripts/plugins.vim

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
	autocmd FileType go noremap <C-A-d> :GoDef<CR>

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
	
augroup END

augroup java_env
	" - apply autocomplete
	autocmd FileType java imap <C-CR> <C-y>

	" - organize imports
	"autocmd! bufwritepost *.java call CocAction('organizeImport')
augroup END
augroup! java_env

" === custom autocomplete themes ===
" - set menu autocomplete color
highlight Pmenu ctermbg=16 ctermfg=white

" - set selected menu autocomplete color
highlight PmenuSel ctermbg=white ctermfg=16

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

	" - move text
	map <C-S-up> <A-k>
	map <C-S-down> <A-j>
	map <C-S-left> <A-h>
	map <C-S-right> <A-l>

	" - clear text hightlight in search mode
	noremap <C-h> :noh<CR>

	" - format with neoformat
	noremap <A-f> :Autoformat<CR>

	" - multiple cursor
	map <C-d> <C-n>
augroup END

augroup env_config
	" enable rainbow brackets
	let g:rainbow_active = 1

	" neovim cmp config
	lua require('config.nvim-cmp')

	" setup mason portable package manager
	lua require("mason").setup()	
augroup END

" === enable autocomplete with neovim language client
let g:LanguageClient_serverCommands = {'go': ['gopls'], 'java': ['jdtls']}

