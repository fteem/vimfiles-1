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
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'mileszs/ack.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'elixir-editors/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'cespare/vim-toml'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mhinz/vim-startify'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leafgarland/typescript-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'kristijanhusak/vim-carbon-now-sh'

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

" ====================================
" vim-airline
" ====================================
" Show vim-airline all the time
set laststatus=2
" automatically populate the g:airline_symbols dictionary with the powerline symbols
let g:airline_powerline_fonts = 1

" ========================================
" Markdown
" ========================================
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml','sql','yaml']
" Disable folding
let g:vim_markdown_folding_disabled=1

" ========================================
" NERD Commenter
" ========================================
map <leader>/ <plug>NERDCommenterToggle<CR>
imap <leader>/ <Esc><plug>NERDCommenterToggle<CR>i

" ========================================
" NERDTree
" ========================================
map <leader>p :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeHijackNetrw = 1
"let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 50
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

" ========================================
" vim-buffergator
" ========================================
let g:buffergator_autoupdate=1
let g:buffergator_viewport_split_policy="T"

" Switch between last two buffers
nnoremap <leader><leader> <c-^>

" Avoid using Esc
" imap jj <Esc>

" ======================================
" Searching
" ======================================
" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

set hlsearch    " Highlight search matches
set incsearch   " Highlight search match as you type
" Clear search highlight with return
nnoremap <cr> :nohlsearch<cr>

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
