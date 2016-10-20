set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'christoomey/vim-tmux-navigator'

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
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

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

" syntax highlighting for go
au BufRead,BufNewFile *.go setfiletype go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
