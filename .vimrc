call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/syntastic'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ycm-core/YouCompleteMe'

	" Color schemes
	Plug 'crusoexia/vim-monokai'
	Plug 'romainl/flattened'
	Plug 'morhetz/gruvbox'
	Plug 'tomasr/molokai'
call plug#end()

" Indentation
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" Color schemes
syntax enable
colorscheme monokai
set background=dark
set termguicolors

" Airline
"let g:airline_powerline_fonts = 1
