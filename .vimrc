set expandtab
set tabstop=4
set shiftwidth=2
set autoindent
set smartindent
set mouse=a

set belloff=all
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'raimondi/delimitmate'
Plugin 'luochen1990/rainbow'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'villainy/murmur-lightline'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline config // REPLACED WITH LIGHTLINE
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
"let g:airline_theme='murmur'

" lightline config
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'murmur',
    \ }
" If no murmur use wombat

" vim-rainbow config
let g:rainbow_active = 1

" Vim Colours
set t_Co=256 " So that it works with tmux
set background=dark " same here, tmux compatibility
colorscheme desert
syntax on
" To fix some issues with the highlight group, either because Debian vim comes
" with a different version of the colorscheme. Use `:hi` to check the values
" https://stackoverflow.com/questions/54631109/vim-colorscheme-leaves-trailing-black-whitespace-in-random-places
hi Normal ctermbg=NONE
hi NonText ctermbg=NONE
