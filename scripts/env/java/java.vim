augroup java_env
	" - apply autocomplete
	autocmd FileType java imap <C-CR> <C-y>

	" - organize imports
	"autocmd! bufwritepost *.java call CocAction('organizeImport')
augroup END
