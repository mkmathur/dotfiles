set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'derekwyatt/vim-scala'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" solarized color scheme
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termtrans = 1

syntax on
set relativenumber
set autoindent
set smartindent
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set showcmd
set t_Co=256
set foldmethod=syntax

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Highlight searches
set hlsearch

set tags=tags;/

let mapleader = "\<Space>"

" preview tag
nnoremap <silent> <Leader>p <c-w>}

nnoremap <silent> <Leader>t :TagbarToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>b :CtrlPBuffer<CR>

" automatically removes trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" no auto comment lines
" inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'

" airline
set laststatus=2 " appear all the time
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

:nmap ; :

map <leader>w :0r ~/.vim/hw_header.txt
