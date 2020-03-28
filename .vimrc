set nocompatible              " be iMproved, required
filetype off                  " required

if has('gui_running')
    call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex'
    Plug 'scrooloose/nerdtree'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'sudar/vim-arduino-syntax'
    Plug 'SirVer/ultisnips'
    Plug 'sudar/vim-arduino-snippets'
    call plug#end()
endif

:set tags=./tags,tags          "Used to tell where tags are located
"nnoremap <C-l> <C-]> 
"nnoremap ii :tag <c-r><c-w><cr> "Normal jump
nnoremap ii g<C-]>  "If there is only one tag jump to it, otherwise show a list
nnoremap oo <C-t>
"map <C-s> :wa \| :!cd .. | C:\MinGW\msys\1.0\bin\make.exe flash <enter>


let g:vimtex_view_method = 'mupdf'

colorscheme solarized 
set background=light
syntax enable                   "enable automatic syntax
set clipboard=unnamed           "connect system clipboard with Vim clipboard
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " number of spaces when indenting with >
set expandtab                   " tabs are spaces
set number                      " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set colorcolumn=80              " highlight specified column for line wraping
filetype indent on              " load filetype-specific indent files
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when we need to.
set showmatch                   " highlight matching [{()}]
set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " 10 nested fold max
set lines=45 columns=100        "Size of default window
set guioptions-=m               "remove menu bar
set guioptions-=T               "remove toolbar
set guioptions-=L               "remove left-hand scroll bar
set belloff=all                 " Disable beeping 
set fileformat=unix             " LF endings, so that Github doesn't bother me
set splitright                  " Opens new split windows to the right
let python_highlight_all=1
set backspace=indent,eol,start  "Backspace will work normaly in insert mode
set linebreak                   "Editor window does not break words in the middle anymore.
set encoding=utf-8              "For special slovenian characters"
set fileencoding=utf-8          "For special slovenian characters"
set scrolloff=5                 "This is amazing, cursor won't go to 
                                "the end of the screen when scrolling

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

" Open NerdTree with control + c
map <C-c> :NERDTreeToggle<CR>

" Used for running python from VIM
filetype on
autocmd FileType python nnoremap <buffer> <C-Y> :wa \| exec '!python' shellescape(@%, 1)<cr>

" Use alt+d for arduino compile and flash
" nnoremap <silent> <C-d> :wa \| !arduino-cli compile --fqbn TleraCorp:stm32l0:IRNAS-env-module-L072Z main.ino && arduino-cli upload --fqbn TleraCorp:stm32l0:IRNAS-env-module-L072Z -p COM11 -i main.ino.TleraCorp.stm32l0.IRNAS-env-module-L072Z.dfu <CR>
nnoremap <silent> <C-d> :wa \| !arduino-cli compile --fqbn esp32:esp32:featheresp32 main.ino && arduino-cli upload --fqbn esp32:esp32:featheresp32 -p COM27 -i main.ino.esp32.esp32.featheresp32 <CR>


" Used for ulti snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

