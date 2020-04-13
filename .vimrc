call plug#begin('~/.vim/plugged')

	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

	" Color schemes
	Plug 'altercation/vim-colors-solarized'
	Plug 'morhetz/gruvbox'
	Plug 'tomasr/molokai'

call plug#end()


" Color schemes
syntax enable
colorscheme gruvbox
set background=dark
set termguicolors

" Airline
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
