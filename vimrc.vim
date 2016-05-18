set nocompatible

execute pathogen#infect()

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

set tags=tags;/

let mapleader = "\<Space>"

" preview tag
nnoremap <silent> <Leader>p <c-w>}
" toggle Tagbar
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

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>b :CtrlPBuffer<CR>

" automatically removes trailing whitespace on save
" autocmd BufWritePre * :%s/\s\+$//e

" no auto comment lines
" inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'

" airline
set laststatus=2 " appear all the time
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

:nmap ; :

map <leader>w :0r ~/.vim/hw_header.txt
