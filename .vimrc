set clipboard=unnamed
set mouse=a
set noswapfile
set background=dark
set number relativenumber
set ruler
set autoindent
set nocompatible
set redrawtime=100000000

filetype plugin indent on

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

syntax on

let g:nvcode_termcolors=256
colorscheme peachpuff

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

