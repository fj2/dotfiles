" Make line numbers magenta
highlight LineNr term=bold cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Setup
set shell=/bin/bash
set nocompatible              " be iMproved
filetype on

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
set tabstop=4                 " tabs count as 4 spaces
set shiftwidth=4
set autoindent
set smartindent
set expandtab                 " insert tabs instead of spaces when tab is pressed

" Setup ruler
set ruler                     " shows column + line number at bottom

" set the runtime path to include fzf, Vundle
set rtp+=/usr/bin/fzf
set rtp+=~/.vim/bundle/Vundle.vim

nmap<leader>a :FZF<CR>

" Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'universal-ctags/ctags'
Plugin 'w0rp/ale'
Plugin 'elixir-editors/vim-elixir'
call vundle#end()
filetype plugin indent on
syntax enable
