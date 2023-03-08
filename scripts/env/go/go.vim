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
	autocmd FileType go noremap <leader>j :GoAddTags<CR>
	
	" - go to function/method definition
	autocmd FileType go noremap <C-A-d> :GoDef<CR>

	" - go to type definition
	autocmd FileType go noremap <C-d><C-t> :GoDefType<CR>
	
	" - go to others function/method definition
	autocmd FileType go noremap <C-d><C-f> :GoDecls<CR>
	autocmd FileType go noremap <leader>df :GoDecls<CR>
	
	" - go documentation viewer
	autocmd FileType go noremap <C-o><C-d> :GoDoc<CR>
	autocmd FileType go noremap <leader>od :GoDoc<CR>
	
	" - go mod reload
	autocmd FileType go noremap <C-m><C-r> :GoModReload<CR>
	autocmd FileType go noremap <leader>ms :GoModReload<CR>

	" - go fill struct
	autocmd FileType go noremap <C-f><C-s> :GoFillStruct<CR>
	autocmd FileType go noremap <leader>fs :GoFillStruct<CR>

	" - go remove tags
	autocmd FileType go noremap <C-r><C-t> :GoRemoveTags<CR>
	autocmd FileType go noremap <leader>rt :GoRemoveTags<CR>

	" - go add specific tags
	autocmd FileType go noremap <A-t> :GoAddTags 
	autocmd FileType go noremap <leader>at :GoAddTags 

	" - go implement interface
	autocmd FileType go noremap <leader>im :GoImpl 

	" - go generate error handling
	autocmd FileType go noremap <leader>ifr :GoIfErr<CR>
augroup END
