call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'francoiscabrol/ranger.vim'
Plug 'matze/vim-move'
Plug 'simeji/winresizer'
Plug 'fladson/vim-kitty'
Plug 'flazz/vim-colorschemes'
Plug 'kovetskiy/vim-bash'
Plug 'valloric/youcompleteme'
Plug 'vim-scripts/autotype.vim'
Plug 'vimwiki/vimwiki'
Plug 'christoomey/vim-tmux-navigator'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify'
Plug 'plasticboy/vim-markdown'
Plug 'valloric/matchtagalways'
Plug 'kovetskiy/sxhkd-vim'
Plug 'lambdalisue/vim-manpager'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

source ${HOME}/.vim/functions.vim
noh
syntax on
set nocompatible
set showmode
set showcmd
set ruler
set number
set cursorline
set expandtab
set noshiftround
set lazyredraw
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set formatoptions=tqn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set list
set matchpairs+=<:>
set statusline=%1*\ file\ %3*\ %f\ %4*\
set statusline+=%=\
set statusline+=%3*\ %l\ of\ %L\ %2*\ line\
set scrolloff=8
set viminfo=
set ttyfast
let mapleader = ","
let maplocalleader="\<Space>"

set undofile
set undodir=~/.vim/undo
set noswapfile

filetype on
filetype indent on
filetype plugin on

if &term =~ '256color'
  " Enable true (24-bit) colors instead of (8-bit) 256 colors.
  " :h true-color
  if has('termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
  colorscheme catppuccin_mocha
endif

set noshowmode

nmap <C-S> :w<CR>
nmap <C-_> :noh<CR>
nmap <C-Up> 8k
nmap <C-Down> 8j
nmap <C-O> o<Esc>
nmap <C-Z> u
nmap <C-Y> <C-R>
"nmap <C-H> i<C-W><Esc>
nmap <F3> :set invnumber<CR>
nmap <F4> :q<CR>
imap <C-S> <Esc>:w<CR>a
imap <C-_> <Esc>:noh<CR>a
imap <C-Up> <Esc>8ka
imap <C-Down> <Esc>8ja
imap <C-O> <Esc>o
imap <C-Z> <Esc>ua
imap <C-Y> <Esc><C-R>a
imap <Nul> <C-N>
"imap <C-H> <C-W>
imap <C-V> <Esc>pa
imap <F3> <Esc>:set invnumber<CR>a
imap <F4> <Esc>:q<CR>
vmap <C-Up> 8k
vmap <C-Down> 8j

"" Easier split navigations
"nmap <C-J> <C-W><C-J>
"nmap <C-K> <C-W><C-K>
"nmap <C-L> <C-W><C-L>
"nmap <C-H> <C-W><C-H>


" Vim-Which-Key
nnoremap <silent> <leader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>

" Notes


let g:notes_directories = ['~/Documents/Notes', '~/pCloudDrive/Documents/Notes']

