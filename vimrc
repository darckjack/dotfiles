set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" plugin for git
Plugin 'tpope/vim-fugitive.git'
" plugin for rails
Plugin 'tpope/vim-rails'
" required by snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
" required by snipmate
Plugin 'tomtom/tlib_vim'
" plugin for snippets
Plugin 'garbas/vim-snipmate'
" Plugin for comments
Plugin 'tomtom/tcomment_vim'
"rspec plugin
Plugin 'thoughtbot/vim-rspec'
" colorscheme
Plugin 'flazz/vim-colorschemes'
" file drawer
Plugin 'scrooloose/nerdtree'
" fuzzy file finder
Plugin 'kien/ctrlp.vim'
" syntax checker/linter
Plugin 'scrooloose/syntastic'
" vim-airline
Plugin 'bling/vim-airline'
"" tmuxline
Plugin 'edkolev/tmuxline.vim' 

" all the plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " load file type plugins + indentation

"" leader to comma
let mapleader="\<Space>"
 
"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
 
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ctags
set tags=./tags;

" RSpec. vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Colorscheme
colorscheme lucius 
LuciusBlackLowContrast

" Highlight certain column
set colorcolumn=90
highlight ColorColumn ctermbg=darkgray

" goodlooking line numbers
set nu

"" good icons on vim-airline
let g:airline_powerline_fonts=1

"" Some mapping
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <Leader><Leader> V

