" Colours
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

set clipboard=unnamed
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'ternjs/tern_for_vim'
Plugin 'universal-ctags/ctags'
Plugin 'junegunn/fzf'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

noremap <C-P> : FZF<CR>

noremap <Up> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Down> <NOP>
vnoremap <Up> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Down> <NOP>
inoremap <Up> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP> 
inoremap <Down> <NOP>
