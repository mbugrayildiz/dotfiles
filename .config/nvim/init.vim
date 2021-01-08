" leader
let mapleader = " "


" plugins
call plug#begin(stdpath('data') . '/plugged')
	" essentials
	Plug 'ferranpm/vim-autopairs'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'justinmk/vim-sneak'
	Plug 'machakann/vim-sandwich'
	Plug 'tpope/vim-commentary'
	Plug 'junegunn/fzf.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'mhinz/vim-signify'

	" eye candy
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'mhinz/vim-startify'
	Plug 'itchyny/lightline.vim'
	Plug 'junegunn/goyo.vim'

	" syntax
	Plug 'elmcast/elm-vim'
	Plug 'norcalli/nvim-colorizer.lua'
call plug#end()


" config
set updatetime=100 termguicolors
set number cc=80
set splitright splitbelow
set clipboard+=unnamedplus mouse=a
set hidden nobackup nowritebackup noshowmode

let g:sneak#label = 1

colorscheme dracula

let g:lightline = { 'colorscheme': 'dracula' }

let g:startify_custom_header = [
	\ '    _   _         __     ___',
	\ '   | \ | | ___  __\ \   / (_)_ __ ___',
	\ '   |  \| |/ _ \/ _ \ \ / /| |  ̣_ ` _ \',
	\ '   | |\  |  __/ (_) \ V / | | | | | | |',
	\ '   |_| \_|\___|\___/ \_/  |_|_| |_| |_|',
\]
let g:startify_lists = [
	\ { 'type': 'files',     'header': ['   Files']                        },
	\ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
	\ { 'type': 'sessions',  'header': ['   Sessions']                     },
	\ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
\ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_bookmarks = [
	\ { 'c': '~/.config/bspwm/bspwmrc' },
	\ { 'i': '~/.config/nvim/init.vim' },
	\ { 'b': '~/.bashrc' },
	\ '~/Blog',
	\ '~/Code',
	\ '~/Pics',
\ ]
let g:startify_enable_special = 0
lua require'colorizer'.setup()


" keybinds
nnoremap <leader>rc		:e $MYVIMRC<cr>
nnoremap <c-a>			<c-^>
nnoremap <c-t>			<c-z>

nnoremap ;			:
nnoremap :			;

nnoremap <leader>q		:q<cr>
nnoremap <leader>Q		:q!<cr>
nnoremap <leader>w		:w<cr>

nnoremap <leader>f		:NERDTreeToggle<cr>
nnoremap <leader><space>	:Files<cr>
nnoremap <leader>.		:!ctags -R .<cr>
nnoremap <leader>dd		:SignifyHunkDiff<cr>
nnoremap <leader>du		:SignifyHunkUndo<cr>
nnoremap <leader>g		:Goyo<cr>
