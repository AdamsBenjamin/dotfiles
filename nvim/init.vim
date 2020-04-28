call plug#begin()
	Plug 'itchyny/lightline.vim'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'dense-analysis/ale'
	Plug 'maximbaz/lightline-ale'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/fzf.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'mcchrish/nnn.vim'

	" Typescript 
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

	" Python
call plug#end()

filetype plugin on
filetype indent on
set syntax=on

set undodir=~/.config/nvim/.undo//
set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swp//

set colorcolumn=80
set cursorline
set number
set relativenumber
set ruler

" Moving around splits
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h

noremap <C-\> <ESC>:NnnPicker<Enter>

let g:ale_fix_on_save = 1

let g:deoplete#enable_at_startup = 1

let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
