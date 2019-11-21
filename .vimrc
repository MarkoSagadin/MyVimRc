set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




if has('gui_running')
    call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex'
    Plug 'scrooloose/nerdtree'
    Plug 'ludovicchabant/vim-gutentags'
    call plug#end()
endif

:set tags=./tags,tags          "Used to tell where tags are located
"nnoremap <C-l> <C-]> 
nnoremap ii :tag <c-r><c-w><cr>
nnoremap oo <C-t>
"map <C-s> :wa \| :!cd .. | C:\MinGW\msys\1.0\bin\make.exe flash <enter>



let g:vimtex_view_method = 'mupdf'

colorscheme molokai 
syntax enable               "enable automatic syntax
set clipboard=unnamed       "connect system clipboard with Vim clipboard
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4            " number of spaces when indenting with >
set expandtab               " tabs are spaces
set number                  " show line numbers
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
set colorcolumn=80          " highlight specified column for line wraping
filetype indent on          " load filetype-specific indent files
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to.
set showmatch               " highlight matching [{()}]
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
set lines=45 columns=100    "Size of default window
set guioptions-=m           "remove menu bar
set guioptions-=T           "remove toolbar
set guioptions-=L           "remove left-hand scroll bar
set belloff=all             " Disable beeping 
set fileformat=unix         " LF endings, so that Github doesn't bother me
set splitright              " Opens new split windows to the right
let python_highlight_all=1
set backspace=indent,eol,start "Backspace will work normaly in insert mode
set linebreak               "Editor window does not break words in the middle anymore.
set encoding=utf-8          "For special slovenian characters"
set fileencoding=utf-8      "For special slovenian characters"

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" jk is escape
inoremap jk 

" Set font 
set guifont=Consolas:h10

" Open NerdTree with control + X
map <C-c> :NERDTreeToggle<CR>

" Used for running python from VIM
filetype on
autocmd FileType python nnoremap <buffer> <C-Y> :wa \| exec '!python' shellescape(@%, 1)<cr>
