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

call plug#end()


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
set listchars=tab:\│\
set matchpairs+=<:>
set statusline=%1*\ file\ %3*\ %f\ %4*\
set statusline+=%=\
set statusline+=%3*\ %l\ of\ %L\ %2*\ line\
set scrolloff=8
set viminfo=
set ttyfast
let mapleader = ","
let maplocalleader="\<Space>"

filetype on
filetype indent on
filetype plugin on

" Colors
set t_Co=255
hi linenr ctermfg=8
hi cursorline cterm=NONE
hi cursorlinenr ctermfg=15
hi comment ctermfg=8
hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7
hi matchparen ctermbg=black ctermfg=NONE
hi search ctermbg=0
hi statusline ctermbg=0 ctermfg=NONE
hi statuslinenc ctermbg=0 ctermfg=0
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
autocmd colorscheme * hi clear cursorline
match group1 /\t/


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

