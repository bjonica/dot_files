set nocompatible

call plug#begin('~/.vim/plugged')

" Awesome Git Support
Plug 'tpope/vim-fugitive'

" Syntax Checking
Plug 'scrooloose/syntastic'

" GraphQL support
Plug 'jparise/vim-graphql'

" Fancier commenting
Plug 'scrooloose/nerdcommenter'

" Comments stuff out
Plug 'tpope/vim-commentary'

" Best completion
Plug 'Valloric/YouCompleteMe'

" Modify your surroundings (parens, brackets, tags and more)
Plug 'tpope/vim-surround'

" A status bar
Plug 'bling/vim-airline'

" Clojure nREPL support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Clojure Parinfer
Plug 'bhurlow/vim-parinfer', { 'for': 'clojure' }

" Node awesomeness
Plug 'moll/vim-node', { 'for': 'javascript' }

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Sensible vim config
Plug 'tpope/vim-sensible'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'tyrannicaltoucan/vim-quantum'

" Git Gutter
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax on
filetype plugin indent on

set guifont=Hack:h11

" Theme 

set background=dark

let g:quantum_black = 1
let g:quantum_italics = 1
colorscheme quantum

if has("termguicolors")
    set termguicolors
endif

" Show the preview window at the bottom
set splitbelow

" Show relative numbering by default
set relativenumber

" No beeps
set noeb vb t_vb=

" {{{ GVim ----------------------------------------------------
  " remove menu bar from gvim
  set guioptions-=m

  " remove toolbar
  set guioptions-=T

  " remove right scrollbar
  set guioptions-=r

  " remove left scrollbar
  set guioptions-=L
" }}}

" {{{ Leader Shortcuts ----------------------------------------
  " leader is comma
  let mapleader=","

  " turn off search highlight
  nnoremap <leader><space> :nohlsearch<CR>

  " edit vimrc/bashrc and load vimrc bindings
  nnoremap <leader>ev :vsp $MYVIMRC<CR>
  nnoremap <leader>eb :vsp ~/.bash_profile<CR>
  nnoremap <leader>sv :source $MYVIMRC<CR>
" }}}

" {{{ NERDTree Specific
  nnoremap <leader>nn :NERDTreeToggle<CR>
" }}}

" {{{ Airline
  let g:airline_theme='quantum'

  " populate powerline fonts
  let g:airline_powerline_fonts = 1
" }}}


