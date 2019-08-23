execute pathogen#infect()
syntax on
filetype plugin indent on

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

" smooth scrolling navigation
noremap <silent> nm :call smooth_scroll#up(&scroll, 5, 2)<CR>
noremap <silent> mn :call smooth_scroll#down(&scroll, 5, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

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
inoremap jk <esc>

" Set font 
if has('gui_running')
  set guifont=Consolas:h10
endif

" Used for running python from VIM
filetype on
autocmd FileType python nnoremap <buffer> <C-Y> :wa \| exec '!python' shellescape(@%, 1)<cr>
