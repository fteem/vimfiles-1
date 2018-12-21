set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'junegunn/goyo.vim'
Bundle 'junegunn/limelight.vim'
Bundle 'tpope/vim-markdown'
Bundle "scrooloose/nerdtree"
Bundle 'scrooloose/nerdcommenter'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mxw/vim-jsx'
Bundle 'mileszs/ack.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'wakatime/vim-wakatime'
Bundle 'elixir-lang/vim-elixir'

" Auto completeness
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "tpope/vim-surround"
Bundle 'kchmck/vim-coffee-script'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'ervandew/supertab'

" Themes
Bundle 'dracula/vim'

" git
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" Rails
Bundle 'tpope/vim-rails'

Bundle 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax highlighting
syntax enable

" ====================================
" vim-airline
" ====================================
" Show vim-airline all the time
set laststatus=2

" automatically populate the g:airline_symbols dictionary with the powerline symbols
let g:airline_powerline_fonts = 1

" Default indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" line numbers
set number
set cursorline
set colorcolumn=81

" Cross-line delete using backspace
set backspace=indent,eol,start

" No folding for markdown
let g:vim_markdown_folding_disabled=1
" Markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml','sql','yaml']

" Clear search highlight with return
nnoremap <cr> :nohlsearch<cr>

" Commenting
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

" Highlight search matches
set hlsearch

" Highlight search match as you type
set incsearch

" ======================================
" Window navigation
" ======================================
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Colorscheme
color dracula
