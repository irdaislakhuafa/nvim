" base vim config
source ~/.config/nvim/scripts/base.vim

" code environment
source ~/.config/nvim/scripts/env/env.vim

" plugins
source ~/.config/nvim/scripts/plugins.vim

" keymaps
source ~/.config/nvim/scripts/keymaps.vim

" colors scheme
source ~/.config/nvim/scripts/colorscheme.vim

" init lua support
source ~/.config/nvim/lua/init-lua.vim

augroup env_config
	" enable rainbow brackets
	let g:rainbow_active = 1

	" show git code diff 
	autocmd FileType * BlamerShow
augroup END

" === enable autocomplete with neovim language client
let g:LanguageClient_serverCommands = {'go': ['gopls'], 'java': ['jdtls']}

