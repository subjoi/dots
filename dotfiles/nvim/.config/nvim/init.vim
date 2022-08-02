call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'kovetskiy/sxhkd-vim'
Plug 'valloric/matchtagalways'
Plug 'fladson/vim-kitty'
Plug 'simeji/winresizer'
Plug 'francoiscabrol/ranger.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'matze/vim-move'
Plug 'plasticboy/vim-markdown'
Plug 'valloric/matchtagalways'
Plug 'kovetskiy/sxhkd-vim'
Plug 'Fymyte/rasi.vim'

call plug#end()

let mapleader = ","

noh
syntax on
filetype plugin indent on
colorscheme catppuccin

set nocompatible
set ttyfast
set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set scrolloff=8

set showmode
set ruler
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set cmdheight=1
set list
set laststatus=2
set matchpairs+=<:>

set statusline=%1*\ file\ %3*\ %f\ %4*\
set statusline+=%=\
set statusline+=%3*\ %l\ of\ %L\ %2*\ line\

"Keybinds

nmap <C-_> :noh<CR>





