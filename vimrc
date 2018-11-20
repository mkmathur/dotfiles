set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
filetype plugin indent on
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

" solarized color scheme
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termtrans = 1

" fixes weird colors in the sign column
highlight clear SignColumn

" clear the separator between vertical splits
highlight VertSplit ctermbg=NONE
highlight VertSplit ctermfg=NONE

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Highlight searches
set hlsearch
set splitbelow
set splitright
set incsearch

set tags=tags;/

let mapleader = "\<Space>"

set statusline+=%#warningmsg#
set statusline+=%*

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>b :CtrlPBuffer<CR>
map <leader>p :CtrlP<CR>

" automatically removes trailing whitespace on save
" autocmd BufWritePre * :%s/\s\+$//e

" no auto comment lines
" inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'

" airline
set laststatus=2 " appear all the time
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

:nmap ; :

" Alt-j/k insert blank lines
nnoremap <silent><a-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><a-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Force vim to write directly to the file, and copy a backup
" Makes webpack work well
set backupcopy=yes

" open NERDTree when vim starts up if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
