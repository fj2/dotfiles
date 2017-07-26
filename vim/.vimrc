" Make line numbers magenta
highlight LineNr term=bold cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Setup
set shell=/bin/bash
set nocompatible              " be iMproved
filetype on
syntax on                     

set noswapfile                " stops swap files from being created

set backspace=2               " backspace works over EOL etc
set number                    " turn on line numbers
set showmatch                 " show matching brackets.

" Setup search
set nohlsearch                " don't highlight search results
set incsearch                 " incremental search
set ignorecase                " do case insensitive matching
set smartcase                 " do smart case matching
set wrapscan                  " continue searching at top when hitting bottom

" Setup tabs
set tabstop=2                 " tabs count as 2 spaces
set shiftwidth=2   
set autoindent
set smartindent
set expandtab                 " insert tabs instead of spaces when tab is pressed

" Setup ruler
set ruler                     " shows column + line number at bottom

map <C-n>:NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ternjs/tern_for_vim'
Plugin 'universal-ctags/ctags'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
