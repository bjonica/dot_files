set nocompatible

call plug#begin('~/.vim/plugged')

" Awesome Git Support
Plug 'tpope/vim-fugitive'

" Git in NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'

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

" Clojure Syntax improved
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }

" Even more improved
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }

" Syntax Checking for Clojure
Plug 'venantius/vim-eastwood', { 'for': 'clojure' }

" Format clojure code
Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }

" Leiningen static support
Plug 'tpope/vim-salve', { 'for': 'clojure' }
Plug 'tpope/vim-projectionist', { 'for': 'clojure' }

" Node awesomeness
Plug 'moll/vim-node', { 'for': 'javascript' }

" JS indentation
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" Enhanced js syntax
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }

" Asynchronous build and test dispatching
Plug 'tpope/vim-dispatch'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Sensible vim config
Plug 'tpope/vim-sensible'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'tyrannicaltoucan/vim-quantum'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Minimap
Plug 'severin-lemaignan/vim-minimap'

call plug#end()

syntax on
filetype plugin indent on

set guifont=Anonymice\ Powerline:h18
set antialias
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
set number

" Folding
set foldmethod=indent
set foldlevelstart=99

set colorcolumn=80
set cursorline
" Press space to toggle the current fold, if the cursor is not in a fold
" then move to the right.
nnoremap <Space> za
nnoremap <S-Space> zA
vnoremap <Space> za
vnoremap <S-Space> zA

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

" {{{ YouCompleteMe
  " autoclose preview window after selecting a completion
  let g:ycm_autoclose_preview_window_after_completion = 1
	let g:ycm_add_preview_to_completeopt = 1
" }}}

" {{{ Fugitive
  nnoremap <leader>ga :Git add %:p<CR><CR>
  nnoremap <leader>gs :Gstatus<CR>
  nnoremap <leader>gc :Gcommit -v -q<CR>
  nnoremap <leader>gt :Gcommit -v -q %:p<CR>
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>ge :Gedit<CR>
  nnoremap <leader>gr :Gread<CR>
  nnoremap <leader>gw :Gwrite<CR><CR>
  nnoremap <leader>gl :Glog<CR>
  nnoremap <leader>gp :Ggrep<Space>
  nnoremap <leader>gm :Gmove<Space>
  nnoremap <leader>gb :Git branch<Space>
  nnoremap <leader>go :Git checkout<Space>
  nnoremap <leader>gps :Gpush<CR>
  nnoremap <leader>gpl :Gpull<CR>
" }}}

" {{{ Git Gutter
  nnoremap <leader>gga :GitGutterStage<CR>
" }}}

" {{[ Syntastic
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
" }}}
