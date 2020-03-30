set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

" Set leader key
let mapleader = ","

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'mileszs/ack.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'hashivim/vim-terraform'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'

" Colorschemes
Plugin 'dracula/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax highlighting
syntax enable

" Default indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Line numbers
set number
set cursorline
set colorcolumn=81,121

" Cross-line delete using backspace
set backspace=indent,eol,start

" Add Vimrc command that opens .vimrc
command! Vimrc :vs $MYVIMRC

" ====================================
" vim-markdown
" ====================================
let g:markdown_fenced_languages = ['go', 'ruby', 'bash=sh']

" ====================================
" vim-airline
" ====================================
" Show vim-airline all the time
set laststatus=2
" automatically populate the g:airline_symbols dictionary with the powerline symbols
let g:airline_powerline_fonts = 1

" ========================================
" vim-buffergator
" ========================================
let g:buffergator_autoupdate=1
let g:buffergator_viewport_split_policy="T"

" Switch between last two buffers
nnoremap <leader><leader> <c-^>

" ======================================
" Searching
" ======================================
" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

set hlsearch    " Highlight search matches
set incsearch   " Highlight search match as you type
" Clear search highlight with backslash
nnoremap \ :noh<return>

" ======================================
" Trim trailing whitespace
" ======================================
autocmd BufWritePre * :%s/\s\+$//e

" ======================================
" Abbreviations
" ======================================
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

" ======================================
" Window navigation
" ======================================
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" ======================================
" Colorscheme
" ======================================
color dracula
" Disable background color
if has('nvim')
  hi Normal guibg=none
endif
hi Normal ctermbg=none

" ======================================
" fzf config
" ======================================
set rtp+=/usr/local/opt/fzf
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
if isdirectory(".git")
  map <C-p> :GFiles --cached --others<cr>
else
  map <C-p> :Files<cr>
endif
