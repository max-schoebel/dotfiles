autocmd! bufwritepost .vimrc source %
set nocompatible
set scrolloff=5

"let mapleader = " "
let maplocalleader = " "

set listchars=space:·,eol:¬,tab:\ →,extends:>,precedes:<
noremap <localleader>w :set list! <CR>

"buffer mappings
nnoremap <localleader>b :ls<CR>
nnoremap <localleader>q :bp <BAR> bd #<CR>
nnoremap <localleader>h :bprevious<CR>
nnoremap <localleader>l :bnext<CR>

" general mappings
set timeoutlen=1000 ttimeoutlen=0
nnoremap J 10j
nnoremap K 10k
nnoremap <c-t> :tabnew <CR>
inoremap <c-t> <esc>:tabnew <CR>
inoremap kj <ESC>
vnoremap kj <ESC>
"inoremap <ESC> <NOP>
nnoremap <c-h> gT
inoremap <c-h> <ESC>gT
nnoremap <c-l> gt
inoremap <c-l> <ESC>gt

vnoremap < <gv
vnoremap > >gv

set t_Co=256
set background=dark
let g:zenburn_high_Contrast=0
colors zenburn


set number
set relativenumber

set clipboard=unnamedplus
set pastetoggle=<F2>

syntax enable

set autoindent
set smartindent
set breakindent

set wildmenu
set showcmd

set hlsearch
set incsearch
set ignorecase
set smartcase

set nostartofline

set laststatus=2
"set statusline=%!getcwd()
"set statusline+=%F
"set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Show column at end of line
" set colorcolumn=100
" highlight ColorColumn ctermbg=233

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
set hidden "biaaaaaatch!

set confirm
set mouse=a

" Tab configurations
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

source ~/.vimrc.plugins
