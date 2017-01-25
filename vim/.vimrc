" Colours
" Make line numbers magenta
highlight LineNr term=bold cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

let mapleader=","

" Setup
set shell=/bin/bash
set nocompatible              " be iMproved
filetype on
syntax on                     
set backspace=2               " backspace works over EOL etc
set number                    " turn on line numbers
set paste                     " makes pasting from clipboard good
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


imap jk <Esc>
set clipboard=unnamed
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Clang format
"=================================================================
let g:clang_format#command = '/usr/bin/clang-format'
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "ColumnLimit" : 80,
            \ "Standard" : "C++11"}
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
autocmd FileType c ClangFormatAutoEnable


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'rhysd/vim-clang-format'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'lervag/vimtex'
Plugin 'rmurai0610/wacc_syntax'

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
