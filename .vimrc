set pastetoggle=<F2>
set nocompatible

syntax on

" Vundle begins here; turn off filetype temporarily
" set the runtime path to include Vundle and initialize
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'janko-m/vim-test'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'mxw/vim-jsx'
Plugin 'yannickcr/eslint-plugin-react'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

set term=screen-256color
" colorscheme PaperColor
" colorscheme matrix
" colorscheme tetragrammaton
" colorscheme inkpot
" colorscheme warriors-away
" colorscheme inori
" colorscheme d8g_04
colorscheme gotham256

hi Normal ctermfg=252 ctermbg=none
set autoindent
" set bg=dark
set backspace=indent,eol,start
set expandtab
set ignorecase
set incsearch
set laststatus=2
set linebreak
set nobackup
set noerrorbells
set nolist
set noswapfile
set novb
set nowrap
set number
set relativenumber
set ruler
set scrolloff=8
set showmatch
set shiftwidth=4
set shortmess=I
set showcmd
set showmode
set sidescroll=1
set sidescrolloff=7
set smartcase
set softtabstop=4
set undolevels=1000
set nrformats-=octal
set vb

" highlight ColorColumn ctermbg=black
" set colorcolumn=80
highlight ColorColumn ctermbg=none
set colorcolumn=256

let g:syntastic_python_flake8_args = "--ignore=E501 --max-complexity 10"

"CtrlP
let g:ctrlp_map = '<c-p>'

"Airline
" let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1

"NERDTree
map <C-n> :NERDTreeToggle<CR>

let test#python#runner = 'pytest'

"Gvim mods
set encoding=utf-8
set hidden
set history=100
set mouse=a

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=Lo

"nerd-commenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nmap <silent> <leader>t : TestNearest<CR>
nmap <silent> <leader>T : TestFile<CR>
nmap <silent> <leader>a : TestSuite<CR>
nmap <silent> <leader>l : TestLast<CR>
nmap <silent> <leader>v : TestVisit<CR>

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Remove all trailing whitespace by pressing F4
noremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

if has("gui_running")
    if has("gui_gtk2")
        " set guifont=Inconsolata\ for\ Powerline\ Medium\ 16
        " set guifont=Inconsolata-dz-Powerline\ Medium\ 16
        set guifont=TerminessTTFNerdFontMono\ 16
        colorscheme gotham256
    endif
endif

