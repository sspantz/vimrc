syntax on
filetype plugin indent on

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
" set nu
set relativenumber
set hlsearch " heightlight search
set incsearch " search text will be heightlight during inputing

set backspace=2
colorscheme darkblue


" set permanent cancellation for all file
set undofile
if !isdirectory("$HOME./vim/undodir")
    call mkdir("$HOME/.vim/undodir", "p")
endif
set undodir="HOME/.vim/undodir"

" let vim to load plugins automatically
packloadall             " load all plugins
silent! helptags ALL    " load help docs for all plugins

" close buffer but do not close window
command! Bd :bp | :sp | :bn | :bd

" set fold
set foldmethod=indent
set foldcolumn=0

" set wildmenu
set wildmenu  " turn on tab auto completion
set wildmode=list:longest,full " completion for the longest string

" NERDTree setting
let NERDTreeShowBookmarks = 1 " show bookmark as NERDTree is open
" autocmd VimEnter * NERDTree " open NERDTree as vim is running 

" Vinegar setting
let NERDTreeHijackNetrw = 0

" register setting
set clipboard=unnamed,unnamedplus " copy to system register(*, +)
" set clipboard=unnamed " copy to system register(*)
" set clipboard=unnamedplus " copy to system register(+)


call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()
