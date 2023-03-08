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

	" - undo
	noremap <C-u> :undo<CR>

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
	noremap <A-f> :Neoformat<CR>

	" - multiple cursor
	map <C-d> <C-n>

	" === Tabularize ===
	noremap <A-t> :Tabularize /

	" git blamer/git lens toggle
	noremap <A-b> :BlamerToggle <CR>	

	noremap <C-l> :NvimTreeToggle<CR>
augroup END
