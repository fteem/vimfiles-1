set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

" Keep files open without displaying them on screen
set hidden

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
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'hashivim/vim-terraform'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-abolish'
Plugin 'smerrill/vcl-vim-plugin'
Plugin 'cespare/vim-toml'

" Colorschemes
Plugin 'dracula/vim'
Plugin 'gruvbox-community/gruvbox'

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

" Neovim only: incremental substitute
if has('nvim')
  set inccommand=nosplit
endif

" Add Vimrc command that opens .vimrc
command! Vimrc :vs $MYVIMRC

" Add reload command that reloads $MYVIMRC
command! Reload :source $MYVIMRC

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
let g:airline#extensions#tabline#enabled = 1

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

" ======================================
" vim-go config
" ======================================
let g:go_fmt_command = "goimports"
" let g:go_highlight_function_calls = 1
" let g:go_highlight_build_constraints = 1
let g:go_metalinter_autosave = 0
let g:go_metalinter_deadline = "2s"
let g:go_auto_type_info = 1
let g:go_version_warning = 0
let g:go_snippet_engine = "automatic"
let g:go_gopls_enabled = 1
let g:go_addtags_transform = "snakecase"

" List all declarations in package
au FileType go nmap <leader>gd :GoDeclsDir<cr>

" Go to alternate file
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
