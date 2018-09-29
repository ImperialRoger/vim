"""""""""""""""""""""""""""""""""""
" Roger Wibrew Vimrc Configuration
" """""""""""""""""""""""""""""""""


set nocompatible
syntax on
set nowrap
set encoding=utf8

filetype off

" set the runtmie path to include vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugative'
Plugin 'scrooloose/nerdtree'
Plugin 'benmills/vimux'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajh17/Spacegray.vim'

call vundle#end()
filetype plugin indent on

""""" END Vundle Configuration

nmap <F8> :TagbarToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""
" Configuration Section
" """"""""""""""""""""""""


set number
set ruler

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set laststatus=2

set cursorline

set t_Co=256
set background=dark

if (has("termguicolors"))
    set termguicolors
endif

let base16colorspace=256
colorscheme spacegray 

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_powerline_fonts = 1 
 let g:airline_theme='hybrid'
 let g:hybrid_custom_term_colors = 1
 let g:hybrid_reduced_contrast = 1

"Vim Splits Easier Vavigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

set splitbelow
set splitright
