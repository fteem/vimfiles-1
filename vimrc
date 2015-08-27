set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on     " required!

let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'junegunn/goyo.vim'
Bundle 'junegunn/limelight.vim'
Bundle 'tpope/vim-markdown'
Bundle "scrooloose/nerdtree"
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
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

" git
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" Rails
Bundle 'tpope/vim-rails'

Bundle 'bling/vim-airline'


" CtrlP
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore "**/*.pyc"
  \ -g ""'

" ====================================
" vim-airline
" ====================================
" Show vim-airline all the time
set laststatus=2

" automatically populate the g:airline_symbols dictionary with the powerline symbols
let g:airline_powerline_fonts = 1


" ====================================
" General GUI settings
" ====================================
if has("gui_running")
  " GUI settings
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Monaco\ For\ Powerline:h13
   endif
  set guioptions-=T " Removes top toolbar
  set guioptions-=r " Removes right hand scroll bar
  set guioptions-=L " Removes left hand scroll bar
  set guioptions-=m " Remove menu bar
else
  " Term configs
  set t_Co=256
  set term=xterm-256color
  set termencoding=utf-8
  set encoding=utf-8
  set fillchars+=stl:\ ,stlnc:\
endif

" Colorscheme
set background=dark
colorscheme gruvbox

" Default indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" line numbers
set number
set cursorline
set colorcolumn=81

" No folding for markdown
let g:vim_markdown_folding_disabled=1
" Markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml','sql','yaml']

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


" ========================================
" Ack
" ========================================
" Search for string in files
function! AckGrep()
  normal ebvey
  exec ":Ack " . @"
endfunction
map <leader>ag :call AckGrep()<cr>
nmap <leader>af :Ack 

" ========================================
" vim-rspec
" ========================================
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Avoid using Esc
imap jj <Esc>

" Disable arrow keys
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

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

" Clear the search buffer when hitting return
:nnoremap <Esc> :nohlsearch<cr>

" ======================================
" Window navigation
" ======================================
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

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

syntax enable
filetype off
filetype on

